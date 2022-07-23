Tìm hiểu SNMP
-------------------
Mục lục
1. khái niệm chung

2. Các thành phần chính của snmp

3. hoạt động của snmp

4. ưu điểm của snmp







--------------------------------------------------------
1. khái niệm chung

- SNMP (viết tắt từ tiếng Anh: Simple Network Management Protocol) là một tập hợp các giao thức không chỉ cho phép kiểm tra các thiết bị mạng như router, switch hay server có đang vận hành mà còn hỗ trợ vận hành các thiết bị này một cách tối ưu, ngoài ra SNMP còn cho phép quản lý các thiết bị mạng từ xa.

![image](https://user-images.githubusercontent.com/95491130/180588648-5d111886-f393-41c9-ab64-4d4a86e40f56.png)

2. Các thành phần chính của snmp:

- Một hệ thống sử dụng SNMP bao gồm 4 thành phần: 

manager SNMP

agent SNMP

các node do SNMP quản lý

Management information base (MIB)

2.1 Manager: Là một máy tính chạy chương trình quản lý mạng. Manager còn được gọi là một NMS (Network Management Station). Nhiệm vụ của một manager là truy vấn các agent và xử lý thông tin nhận được từ agent.

- Các chức năng chính của SNMP manager:

Agent truy vấn

Nhận response từ các agent

Đặt các biến trong agent

Xác nhận các sự kiện không đồng bộ từ các agent

2.2 Agent: Là một chương trình chạy trên thiết bị mạng cần được quản lý. Agent có thể là một chương trình riêng biệt (ví dụ như daemon trên Unix) hay được tích hợp vào hệ điều hành, ví dụ như IOS (Internetwork Operation System) của Cisco. Nhiệm vụ của agent là thông tin cho manager.

- Các chức năng chính của SNMP agent:

Thu thập thông tin quản lý về các chỉ số hoạt động cuả thiết bị

Lưu trữ và truy xuất thông tin quản lý như được định nghĩa trong MIB.

Báo hiệu sự kiện cho trình quản lý.

Hoạt động như một proxy cho một số nút mạng không quản lý được – SNMP.

2.3 các node do SNMP quản lý: Các node do SNMP quản lý là các thiết bị và dịch vụ mạng mà các Agent SNMP quản lý.

2.4 Management information base viết tắt: MIB, là một tệp văn bản (.mib) chia thành từng mục và mô tả tất cả các đối tượng trên một thiết bị cụ thể có thể được truy vấn hoặc kiểm soát bằng SNMP. Mỗi mục MIB được gán một mã định danh đối tượng (OID – Object Identifier).

3. hoạt động của snmp:

- SNMP sử dụng UDP (User Datagram Protocol) làm giao thức truyền tải thông tin giữa manager và các agent. Việc sử dụng UDP, thay vì TCP, bởi vì UDP là phương thức truyền mà trong đó hai đầu thông tin không cần thiết lập kết nối trứơc khi dữ liệu được trao đổi (connectionless), thuộc tính này phù hợp trong điều kiện mạng gặp trục trặc, hư hỏng v.v. cần ưu tiên về mặt tốc độ.

- SNMP có các phương thức quản lý nhất định và các phương thức này được định dạng bởi các gói tin PDU (Protocol Data Unit). Các manager và agent sử dụng PDU để trao đổi với nhau.

![image](https://user-images.githubusercontent.com/95491130/180589501-75cdfd0d-ac10-45aa-b49d-547c00afc96e.png)

3.1 Giao tiếp từ phía Manager SNMP đến Agent SNMP.

GetRequest: thông báo GetRequest sẽ được gửi từ Manager SNMP (client) đến Agent SNMP (server) để truy xuất giá trị của một biến nào đó.

GetNextRequest: tin nhắn GetNextRequest sẽ được gửi từ messenger đến Agent SNMP để truy xuất giá trị của một biến. GetNextRequest dùng để truy xuất giá trị trong mục nhập trong bản. Nếu Manager SNMP không biết chỉ mục của các mục nhập sẽ không thể truy xuất giá trị. Trong tình huống thế này, GetNextRequest sẽ dùng để xác định đối tượng.

SetRequest: thông báo SetRequest gửi từ Manager SNMP đến Agent SNMP để đặt giá trị trong một biến.

GETBULK Request: do Manager SNMP đến Agent SNMP để có yêu cầu và lấy về một lượng lớn dữ liệu tiềm năng một cách hiệu quả. Đặc biệt là các bảng lớn.

3.2 Giao tiếp từ phía Agent SNMP về Manager SNMP.

GetResponse: thông báo GetResponse do Agent SNMP gửi đến Manager SNMP để phản hồi lại thông báo GetRequest và GetNextRequest của Manager SNMP. Thông báo này chứa trị của một biến do Manager SNMP yêu cầu.

Trap: dùng để gửi từ Agent SNMP đến Manager SNMP để báo cáo một sự kiện. VÍ dụ: khi Agent SNMP khởi động lại thì sẽ gửi tin nhắn cho Manager SNMP cũng như thời gian khởi động lại.

4. ưu điểm của snmp:

- SNMP được thiết kế để đơn giản hóa quá trình quản lý các thành phần trong mạng. Nhờ đó các phần mềm SNMP có thể được phát triển nhanh và tốn ít chi phí .

- SNMP được thiết kế để có thể mở rộng các chức năng quản lý, giám sát. Không có giới hạn rằng SNMP có thể quản lý được cái gì. Khi có một thiết bị mới với các thuộc tính, tính năng mới thì người ta có thể thiết kế SNMP để phục vụ cho riêng mình.

- SNMP được thiết kế để có thể hoạt động độc lập với các kiến trúc và cơ chế của các thiết bị hỗ trợ SNMP. Các thiết bị khác nhau có hoạt động khác nhau nhưng đáp ứng SNMP là giống nhau.















