tìm hiểu về định tuyến.

mục lục






----------------------------------
1. khái niệm về định tuyến:

- Định tuyến (Routing) là quá trình tìm kiếm và xác định đường đi tốt nhất trên một mạng máy tính để gói tin tới được đích thông qua các thiết bị định tuyến.

- Để làm được điều đó thì các thiết bị định tuyến cần phải dựa vào thông tin bẳng định tuyến (Routing Table) và giao thức định tuyến ( Routing Protocol).


![image](https://user-images.githubusercontent.com/95491130/180599760-3c73726f-c273-4d54-9150-8745dce21cda.png)


trong bảng định tuyến mỗi mạng mà router có thể chuyển đi ( mạng đích) thể hiện bằng 1 dòng. Mỗi mạng này có được có thể do chúng đang kết nối trực tiếp với router đang xét hay router học được thông qua việc cấu hình.

![image](https://user-images.githubusercontent.com/95491130/180599804-6e7d8323-7b03-42e3-8621-438e8eb9c544.png)

- Bảng định tuyến của mỗi giao thức định tuyến là khác nhau, nhưng có thể bao gồm những thông tin sau:

Địa chỉ đích của mạng, mạng con hoặc hệ thống.

Địa chỉ IP của router chặng kế tiếp phải đến.

Giao tiếp vật lí phải sử dụng để đi đến Router kế tiếp.

Subnet mask của địa chỉ đích.

Khoảng cách đến đích (ví dụ: số lượng chặng để đến đích).

Thời gian (tính theo giây) từ khi Router cập nhật lần cuối.

2. phân loại định tuyến:

- định tuyến tĩnh

- định tuyến động

- default router.

3. định tuyến tĩnh: 

- trong cấu hình định tuyến tĩnh người quản trị phải cấu hình thủ công chỉ ra đường đi đến tất cả các mạng đích trên router trong hệ thống. Định tuyến tĩnh không có hoạt động gửi thông tin cập nhật như các giao thức định tuyến động.

3.1 ưu điểm: 

- Sử dụng ít băng thông hơn so với các phương thức định tuyến khác.

- Không tiêu tốn tài nguyên để tính toàn và phân tích gói tin định tuyến.

- Dễ dàng triển khai, cấu hình.

- Có tính bảo mật tốt hơn.

3.2 nhược điểm: 

- Không có khả năng tự động cập nhật đường đi.

- Phải cấu hình thủ công khi mạng có sự thay đổi.

- Khả năng mở rộng kém, phù hợp với mô hình mạng nhỏ.

3.3 những trường hợp sử dụng định tuyến tĩnh:

- Đường truyền có băng thông thấp.

- Người quản trị cần kiểm soát các kết nối trong hệ thống.

- Hệ thống co các tuyến kết nối ít.

- Kết nối dùng định tuyến tĩnh là đường dự phòng cho đường kết nối dùng giao thức định tuyến động.

3.4 phương thức triển khai định tuyến tĩnh

- Next hop: thông tin sẽ chuyển đến Router kế tiếp nào trước khi đến đích.

- Exit Interface: thông tin sẽ được đưa ra cổng nào trước khi đến đích.

- lưu ý: mặc định router sẽ biết đc đường đi đến mạng đích đang kết nối trực tiếp với nó.

để cấu hình định tuyến tĩnh, chúng ta sử dụng cú pháp sau:

![image](https://user-images.githubusercontent.com/95491130/180600098-f9e4da8b-13bc-4e6b-9db7-a8f875bec7c7.png)

- trong đó:

destination network: là địa chỉ mạng đích cần tới

subnetmark: subnetmark của destination network

nexthopaddress: địa chỉ IP của cổng trên router kế tiếp

out-bound-interface: cổng của router sẽ gửi dữ liệu ra

Distance: thay đổi giá trị AD cho tuyến này. Mặc định là các tuyến tính có AD=1

3.5 cấu hình đường cố định:

- Sau đây là quy trình để cấu hình đường cố định:


Xác định tất cả các mạng đích cần cấu hình, subnet mask tương ứng và gateway tương ứng. Gateway có thể là địa chỉ của trạm kế tiếp để đến được mạng đích.

Vào chế độ cấu hình toàn cục của router.

Nhập lệnh ip route với địa chỉ mạng đích, subnet mask tương ứng và gateway tương ứng mà bạn đã chọn lựa ở bước 1.

Lặp lại bước 3 cho những mạng đích khác.

Thoát khỏi chế độ cấu hình toàn cục.

3.6 Hoạt động của định tuyến tĩnh có thể chia ra làm 3 bước như sau:

- rước hết, người quản trị mạng cấu hình các đường cố định cho router.

- Router cài đặt các đường đi này vào bảng định tuyến.- 

- Gói dữ liệu được định tuyến theo các đường cố định này.

- Người quản trị mạng cấu hình đường cố định cho router bằng lệnh ip route. Cú pháp của lệnh ip route.

3.7 Demo cấu hình định tuyến tĩnh cho mô hình sau trên packet tracer

![image](https://user-images.githubusercontent.com/95491130/180676660-80282497-decb-43f8-9ddd-79e55d6e00c7.png)

trong mô hình có 3 mạng: 172.16.10.0/24 ; 172.16.12.0/24 ; 172.16.20.0/24.

để hệ thống liên thông thì bảng định tuyến của R1,R2 phải đi đến tất cả các mạng trong hệ thống trên.

Router R1: đã biết mạng 172.16.10.0/24 và 172.16.12.0/24 đối với mạng 172.16.20.0/24. chúng ta cấu hình như sau:

![image](https://user-images.githubusercontent.com/95491130/180676883-24d2b6a6-fb48-4c32-bd53-5611d8ebde75.png)

Router R2: đã biết mạng 172.16.20.0/24 và 172.16.12.0/24 đối với mạng 172.16.10.0/24. chúng ta cấu hình như sau:

![image](https://user-images.githubusercontent.com/95491130/180676929-8fa76730-963c-4a25-814d-b0b9acbcf765.png)

4. định tuyến động

- định tuyến động là loại định tuyến mà trong đó route sử dụng các tuyến dường đi động để vận chuyển dữ liệu đi. các tuyến đường đi động này có đc do roter sử dụng các giao thức định tuyến động trao đổi thông tin định tuyến với nhau.

- 1 số giao thucscw định tuyến động: RIP, OSPF, BGP,...

4.1 phân loại định tuyến động:

4.1.1 distace-vector 

![image](https://user-images.githubusercontent.com/95491130/180678012-657ff20e-ab81-4544-93ae-d03a04965f7a.png)

- các router định tuyến loại distace-vector  sẽ gửi định kỳ toàn bộ bảng định tuyến của mình và chỉ gửi cho các router làng giềng kết nối trực tiếp với mình.

- các router định tuyến theo dạng này không biết được đường đi đến đích 1 cách cụ thể, không biết về các router trung gian trên đường đi và cấu trúc kết nối giữa chúng.

- bảng định tuyến là nơi lưu lại kết quả đường đi tốt nhất của mỗi router.Do đó khi chúng trao đổi bảng định tuyến với nhau cac router chọn đường đi dựa trên kết quả đã chọn của router láng giềng, mỗi router nhìn hệ thống mạng theo sự chi phối của các router láng giềng.

- các touter dịnh tuyến theo distance vector thực hiện cập nhật thông tin định tuyến theo định kỳ nên tiêu tốn nhiều băng thông đường truyền . Khi có sự thay đổi xảy ra, router nào nhận biết được sự thay đổi đầu tiên sẽ cập nhật bảng định tuyến của mình trc rồi chuyển bảng định tuyến cập nhật cho láng giềng.

- giao thức thuộc loại này là RIP.

4.1.2 Linh - state

![image](https://user-images.githubusercontent.com/95491130/180678572-ffd50047-192a-419f-b230-b45f6f615841.png)

- các router sẽ trao đổi LSA ( link state advertisement) với nhau để xây dựng và duy trì cơ sở dữ liệu về trạng thái các đường liên kết hay còn gọi là  cơ sở dữ liệu về cấu trúc mạng ( topology database). các thông tin trao đổi đc gửi dưới dạng mutilcast.

- các router có cái nhìn đầy đủ cụ thể về cấu trúc mang. từ đó dùng thuật toán để tìm đường đi ngắn nhất.

- Thực hiện cập nhật khi có sự thay đổi nên thời gian hội tụ nhanh và ít tốn băng thông.

- giao thức định tuyến linkstate có hỗ trợ CDIR , VLSM là lựa chọn tốt cho mạng lớn và phức tạp nhưng đồi hỏi dung lượng bộ nhớ lớn và khả năng xử lý mạnh của cpu trên các router.

- để đảme bảo các cơ sở dữ liệu cập nhật thong tin mới, trong LSA đc đánh thêm chỉ số tuần tự "sequence". chỉ số này đc bắt đàu từ giá trị initial đến giá trị max-age. Khi một roiter nào đó tạo LSA , nó sẽ đặt sequence bằng initial. Mỗi khi roter gửi ra 1 phiên LSA nó sẽ tăng giá trị đó lên 1. Như vậy giá trị sequece càng cao thì LSA càng mới. giá trị sequense đạt maxage router sẽ gửi LSA cho tất cả các router còn lại , sau đó router đặt lại giá trị squence về initial.

4.1.3 classfull

![image](https://user-images.githubusercontent.com/95491130/180679674-3272f955-5ed4-4765-a85a-4e169baaed70.png)

4.1.4 classless

- các giao thức thuộc nhóm này sẽ quảng bá thông tin subnetmask cùng với địa chỉ mạng quảng bá trong các gói tin cập nhật định tuyến, hỗ trợ VLSM cho phép tóm tắt các tuyến 1 cách thủ công. ( RIPv2, OSPF, EIGRP).

5. 2 tham số dùng trong định tuyến Metric và AD

- metric: là tham số dùng để chọn đường đi tốt nhất cho việc định tuyến. Đây là giá trị mà bất kỳ giao thức định tuyến nào cũng phải dùng để tính toán đường đi đến mạng đích. trong trường hợp có nhiều đường đi đến 1 mạng đihcs thì đường nào có metric thấp nhất sẽ đc lựa chọn để đưa vào bảng định tuyến. Mỗi giao thức định tuyến có 1 kiểu metric khac nhau.

- AD: là giá trị quy ước dùng để chỉ độ tin cậy của các giao thức định tuyến, giao thức nào đso có AD nhỏ hơn sẽ đc xem là đáng tin cậy hơn. Trong trường hợp router học được 1 mạng đihcs thông qua nhiều giao thức định tuyến khác nhau, thì tuyến của giao thức định tuyến nào có AD nhỏ nhất thì sẽ được lưa chọn và đưa vào bảng định tuyến.

6. default route- 

- default route nằm ở cuối bảng định tuyến và được sử dụng để gửi các gói tin đi trong trường hợp mạng đích không tìm thấy trong bảng định tuyến. Nó rất hữu dụng trong mạng dạng stub network như kết nối từ mạng nội bộ ra ngoài Internet. 

![image](https://user-images.githubusercontent.com/95491130/180677160-5b6aa95d-cff9-441a-9f67-acfbae625c64.png)

7. so sanh giữa định tuyến động và định tuyến tĩnh

![image](https://user-images.githubusercontent.com/95491130/180680664-dc7176ac-055d-489d-85ce-6ee39ae3a869.png)


