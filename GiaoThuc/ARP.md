tìm hiểu ARP:
-------------

mục lục:

1. Khái niệm chung ARP:
 
2. Lịch sử và mục đích sử dụng:

3. các loại ARP:

4. các thành phần quan trọng trong arp:

5. các loại địa chỉ trong 1 bản tin ARP

6. Hoạt động của ARP:

------------------------------------------------------

1. Khái niệm chung ARP:

- ARP (viết tắt của cụm từ Address Resolution Protocol) là giao thức mạng được dùng để tìm ra địa chỉ phần cứng (địa chỉ MAC) của thiết bị từ một địa chỉ IP nguồn. 

- Nó được sử dụng khi một thiết bị giao tiếp với các thiết bị khác dựa trên nền tảng local network. Ví dụ như trên mạng Ethernet mà hệ thống yêu cầu địa chỉ vật lý trước khi thực hiện gửi packets.

- ARP là một giao thức ánh xạ rất cần thiết. Độ dài của địa chỉ IP và địa chỉ MAC rất khác nhau. Địa chỉ IPv4 thông dụng có độ dài 32 bit, trong khi đó địa chỉ MAC dài đến 48 bit. Do đó, chúng cần “một người” trung gian để dịch 32 thành 48 và ngược lại để chúng “nhận ra nhau”.

![image](https://user-images.githubusercontent.com/95491130/180587712-9a73e7bd-cd31-4790-99a2-2fdab58be469.png)

2. Lịch sử và mục đích sử dụng: 

- ARP được hình thành và phát triển vào đầu những năm 1980 như một giao thức dịch địa chỉ chung cho các mạng IP. Bên cạnh Ethernet và WiFi thì ARP đã được triển khai cho ATM, Token Ring và cả những loại mạng vật lý khác.

- ARP có vai trò quan trong trong việc dịch địa chỉ IP sang địa chỉ MAC. Nếu không có ARP máy chủ sẽ không thể tìm ra bất cứ địa chir máy chủ nào khác. 

- Mạng LAN giữ một bảng hoặc thư mục ánh xạ địa chỉ IP tới địa chỉ MAC của các thiết bị khác nhau bao gồm: các thiết bị đầu cuối và các router trên mạng đó.

- Giao thức ARP tạo các thư mục nhập một cách nhanh chóng. Nếu thiết bị người dùng không biết địa chỉ phần cứng của máy chủ đích, thiết bị sẽ gửi thông báo đến mọi máy chủ trong mạng để yêu cầu địa chỉ này. Khi tìm được một máy chủ thích hợp với yêu cầu, ARP sẽ trả lời lại bằng địa chỉ phần cứng của máy chủ đó. Địa chỉ này sẽ được lưu lại trong thư mục nhập hoặc bảng ARP.


3. các loại ARP:

- Hiện tại, có 4 loại ARP chính bao gồm:

Proxy ARP

Gratuitous ARP

Reverse ARP

Inverse ARP

![image](https://user-images.githubusercontent.com/95491130/180587824-d6f8a484-3289-4c14-a2af-eae6c65cf63a.png)

- Proxy ARP 

là một kỹ thuật bắt buộc thiết bị proxy trong một mạng phải trả lời cho ARP không có địa chỉ IP trên mạng đó. Proxy có khả năng nhận biết vị trí đích của lưu lượng truy cập và cung cấp địa chỉ MAC của chính mình làm đích.

- Gratuitous ARP 

gần giống như thủ tục hành chính và thực hiện trên máy chủ. Hoạt động này chỉ nhằm thông báo một địa chỉ IP to MAC đã được cập nhật. Gratuitous ARP không thể nhắc dịch hoặc thực hiện ARP request từ một IP sang MAC.

- Reverse ARP (RARP):

Máy chủ của bạn sẽ không biết địa chỉ IP của chính bản thân chúng nhưng chúng có thể sử dụng Reverse Address Resolution Protocol (RARP) để tự khám phá địa chỉ của mình.

- Inverse ARP(IARP):

ARP sử dụng địa chỉ IP để tìm địa chỉ MAC. Trong khi đó, Inverse ARP sử dụng địa chỉ MAC để tìm địa chỉ IP.

4. các thành phần quan trọng trong arp:

- ARP Cache: sau khi phân giải địa chỉ MAC, ARP sẽ gửi đến bộ lưu trữ một bản để tham khảo trong tương lai. Các giao tiếp kế tiếp sẽ có thể dùng địa chỉ MAC từ bản.

- ARP Cache Timeout: đó là thời gian mà địa chỉ MAC trong bộ nhớ cache ARP có thể lưu trữ.

- ARP request:Khi hệ thống khởi tạo quá trình, gói tin được gửi từ máy nguồn tới thiết bị đích

- ARP response/reply: Khi quá trình đáp trả gói tin ARP request, được gửi từ thiết bị đích đến máy nguồn

5. các loại địa chỉ trong 1 bản tin ARP:

- Sender Hardware Address: Đây là địa chỉ lớp hai của thiết bị gửi bản tin

- Sender Protocol Address: Đây là địa chỉ lớp ba (hay còn gọi là địa chỉ logic) của thiết bị gửi bản tin

- Target Hardware Address: Địa chỉ lớp hai (hay còn được gọi là địa chỉ phần cứng) của thiết bị đích của bản tin

- Target Protocol Address: Địa chỉ lớp ba (hay gọi là  địa chỉ logic) của thiết bị đích của bản tin

![image](https://user-images.githubusercontent.com/95491130/180588241-25e5dd64-a8b3-42c1-85b3-5e125139641c.png)

6. Hoạt động của ARP:

B1: Thiết bị sẽ  thực hiện kiểm tra cache (bộ đệm) của mình. Nếu đã có địa chỉ IP đích tương ứng với MAC nào đó rồi thì lập tức hệ thống chuyển sang bước 9.

B2: Hệ thống bắt đầu khởi tạo gói tin ARP Request với các trường địa chỉ như trên.

B3: Thiết bị nguồn truyền gói tin ARP Request trên toàn mạng

B4: Các thiết bị trong mạng đều sẽ nhận được gói tin ARP Request. Gói tin được xử lý bằng cách đưa thiết bị vào trường địa chỉ Target Protocol Address. Nếu trùng với địa chỉ của mình thì tiếp tục xử lý, nếu không thì hủy gói tin

B5: Nếu Thiết bị với IP trùng với IP trong trường Target Protocol Address sẽ thực hiện quá trình khởi tạo gói tin ARP Reply. Đồng thời thiết bị sẽ lấy địa chỉ datalink của mình để tiến hành đưa vào trường Sender Hardware Address

B6: Thiết bị đích cập nhật bảng ánh xạ địa chỉ IP và MAC của thiết bị nguồn vào bảng ARP cache của mình để giảm bớt thời gian xử lý cho những lần sau.

B7: Thiết bị đích sẽ bắt đầu gửi gói tin Reply đã được khởi tạo đến thiết bị nguồn. 

B8: Thiết bị nguồn nhận được gói tin reply và tiến hành xử lý bằng cách lưu trường Sender Hardware Address trong gói reply như những địa chỉ phần cứng của thiết bị đích

B9: Thiết bị nguồn update vào ARP cache giá trị tương ứng giữa địa chỉ network và cả địa chỉ datalink của thiết bị đích. Do đó, những lần tiếp theo sẽ không còn cần tới request.







