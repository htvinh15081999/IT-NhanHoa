Tìm hiểu về giao thức DHCP



Mục lục:

1. định nghĩa DHCP là gì ?

2. ưu điểm của việc cấp phát động so với cấp phát tĩnh:

3. cơ chế hoạt động của dhcp:

4. cơ chế tu động refresh lại thời gian đăng ký (lease time):

5. DHCP Replay Agent

6. Quy trình xử lý thông tin từ DHCP relay Agent


-------------------------------------------------------------


1. Khái niệm chung về DHCPL

- DHCP là viết tắt của cụm từ Dynamic Host Configuration Protocol: là giao thức cho phép cấp phát địa chỉ IP 1 cách tự động, giúp đưa thông tin đến các thiết bị hợp lý hơn cũng như việc cấu hình subnetmark hay cổng mặc định.

- Máy tính được cấu hình 1 cách tự động nên giảm được việc can thiệp vào hệ thống mạng. DHCP cung cấp 1 database trung tâm để theo dõi tất cả các máy tính trong hệ thống mạng. Tránh trường hợp 2 máy tính khác nhau lại cùng 1 địa chỉ IP.

![image](https://user-images.githubusercontent.com/95491130/180585431-b4f8f6ac-a4f6-4044-a3b6-3f53c5f4e5a7.png)

2. ưu điểm của việc cấp phát động so với cấp phát tĩnh:

- Khắc phục được tình trạng đụng địa chỉ IP và giảm chi phí quản trị cho hệ thống mạng.

- giúp cho các nhà cung cấp dịch vụ ( isp) tiết kiệm được số lượng địa chỉ IP thật ( public IP).

- phù hợp với máy tính thường xuyên qua lại giữa các mạng.

- kết hợp với hệ thống mạng không dây cung cấp các điểm hostpot.

3. cơ chế hoạt động của dhcp:

- giao thức dhcp làm việc theo mô hình client-server. quá trình tương tác giữa dhcp client và dhcp server diễn ra cụ thể qua4 bước sau:

a. IP lease request

b. IP lease offer

c. IP lease selection

d. IP lease acknowledgement

3.1 IP lease request:

- đầu tiên client sẽ broadcast 1 message tên là DHCPDISCOVER , vì lúc này client chưa có địa chỉ IP nên nó sẽ dùng 1 địa chỉ source ( nguồn ) là 0.0.0.0 và cũng vì client chưa biết được đia chỉ của DHCP server nên nó sẽ gửi 1 địa chỉ broadcast là 255.255.255.255 lên toàn mạng. 
- luc này gói tin DHCPDISCOVER sẽ được broadcast lên toàn mạng. gói tin này cũng chứa 1 địa chỉ MAC ( địa chỉ vật lý của máy do nhà sản xuất cung cấp) đồng thời cũng chứa tên máy tính của máy client để HDCP server có thể biết client nào đã gửi yêu cầu đến.

![image](https://user-images.githubusercontent.com/95491130/180585903-f4d3f137-5961-467b-b59a-87b67c050f89.png)

3.2 IP lease offer:

- nếu có 1 dhcp hợp lệ ( nghĩa là nó có thể cấp dịa chỉ IP cho 1 client) nhận đươc gọi tin DHCPDISCOVER cua client thì nó sẽ trả lời lại bằng 1 gói tin DHCPOFFER gói tin này kèm những thông tin như sau:

Mac add của client

một IP add cấp cho ( offer IP add )

1 subnetmark

thời gian thuê ( mặc định là 8 ngày )

địa chỉ IP của DHCP cấp phát địa chỉ IP cho Client  này.

- nếu dhcp client không nhận được DHCPOFFER nào thì nó sẽ boardcast lại gói tin DHCPDISCOVER. 

- nếu DCHP client k nhận được offer sau 4 lần thì nó sẽ sdung 1 đchi IP trong khoảng 169.254.0.1 đến 169.254.255.254 với subnetmark là 255.255.0.0 từ đó giúp các client trong 1 mạng không có DHCP server thấy được nhau. DHCP Cient tiếp tục tìm kiếm DHCP server mỗi 5p

![image](https://user-images.githubusercontent.com/95491130/180587442-4c223165-5fda-4f58-807f-fbc88391c569.png)

3.3 lease selection:

- DHCP client nhận được DHCPOFFER thì phản hồi gửi lại 1 gói tin DHCPREQUEST bao gồm thông tin về DHCP server cấp địa chỉ cho nó. Sau đó tất cả các DHCP server sẽ rút lại gói tin DHCPOFFER của mình và giữ lại địa chỉ IP cho những lần yêu cầu của client khác.

![image](https://user-images.githubusercontent.com/95491130/180586339-a5a537d8-4272-41be-bdc0-3c06765fdcce.png)

3.4 IP lease acknowledgement

- DHCP server nhận đc DHCPREQUEST sẽ gửi lại cho client 1 bản tin DHCPACK để thông báo cho client đã chấp nhận cho thuê địa chỉ IP đó. Gói tin này bào gồm địa chỉ IP và các cấu hình khác ( DNS server , WINS server ). Khi client nhận được DHCPACK thì đánh đấu kết thức quá trình xin và nhận giữa client và server.

- Tất cả các trao đổi của server và client sử dụng giao thức UDP cổng 67,68. Một vài switch không cho phép gói tin trao đổi theo kiểu broadcast đi qua , cho nên phải config những switch này để được broadcasrt qua những port này.

 ![image](https://user-images.githubusercontent.com/95491130/180586541-cbf62e32-306c-4c71-8bbd-adaade98c203.png)

4. cơ chế tu động refresh lại thời gian đăng ký (lease time):

- Mặc định thời gian thuê là 8 ngày sau khi sử dụng được 1 nửa tgian CLient sẽ tự động gửi gói xin lại đchi IP với dhcp server mà nó đã xin ban đầu. 

- lúc này client sẽ gửi 1 gói tín DHCPREQUEST trực tiếp đến DHCP server.

![image](https://user-images.githubusercontent.com/95491130/180586919-ad7f5fed-baab-455b-bad1-39b5cee42926.png)

- nếu dchp server còn hoạt động nó sẽ trả lại 1 gói tín DHCPACK để cho thuê mới lại DHCP client. Nếu DHCP server k còn hoạt động thì nó sẽ tiếp tục sử dụng cấu hình hiện thời của nó.

- Khi hết thời gian sử dụng thì nó sẽ tiếp tục gửi gói tin DCHPDISCOVER để xin cấp phát.

5. DHCP Replay Agent.

- là 1 máy tính hoặc 1 router được cấu hình để lắng nghe và chuyển tiếp các gói tin giữa dhcp server và dhcp client từ subnet này sang subnet khác.

![image](https://user-images.githubusercontent.com/95491130/180587046-ce84349a-489d-4068-a057-d42a3a8436e1.png)

6. Quy trình xử lý thông tin từ DHCP relay Agent:

b1: Client broadcast gói tin hdcpdiscover trong nội bộ mang:

![image](https://user-images.githubusercontent.com/95491130/180587132-8c4feb5e-8270-403b-b865-b38054d654cb.png)

b2: DHCP relay Agent trên cùng mạng với client sẽ nhận gói tin đó và chuyển đến dhcp server bằng tín hiệu unicast.

![image](https://user-images.githubusercontent.com/95491130/180587158-555db24f-5d62-40e8-b601-f827175e4795.png)

B3: DHCP server dùng tín hiệu unicast gởi trả  DHCP relay Agent 1 gói tin dhcpoffer

![image](https://user-images.githubusercontent.com/95491130/180587181-d340b510-8fc4-44f3-b499-89144ed21b4f.png)

b4: DHCP relay Agent Broadcast gói tin dhcpoffer  đó đến client.

![image](https://user-images.githubusercontent.com/95491130/180587212-086f1e0d-ca6b-487e-aa90-b53c5ed55f8d.png)

b5: sau khi nhận được gói tín dhcpoffer client sẽ broadcast tiếp gói tin dhcprequest. 

![image](https://user-images.githubusercontent.com/95491130/180587261-dd57d4f5-5eb6-49d2-82c5-a27bc501b00f.png)

b6: DHCP Replay Agent. nhận gói tin dhcprequest chuyển đến dhcp server bằng tín hiệu unicast

![image](https://user-images.githubusercontent.com/95491130/180587285-d891dfe0-ad3a-4a37-b507-763021d82624.png)

b7: dhcp server dùng tín hiệu unicast trả lời DHCP Replay Agent bằng gói tin dhcpack. 

![image](https://user-images.githubusercontent.com/95491130/180587306-be52f03a-6ea3-4590-a78f-397cbaa4c9bb.png)

b8: dhcp relay agent broadcasts gói tín hdcpack đến clietn. đến đây là hoàn tất quy trình tiếp nhận xử lý cà chuyển tiếp thông tin của dchp relay agent.

![image](https://user-images.githubusercontent.com/95491130/180587353-846d7124-33c6-4625-b33b-a43a01835bb1.png)











































