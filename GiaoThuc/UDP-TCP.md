Tìm hiểu TCP/UDP phân biệt
------------------------------
mục lục
I. giao thứcTCP

1. khái niệm 

2. cách hoạt động của tcp

3. các lớp mô hình tcp

4. các loại giao thức TCP

5. Bảo mật của TCP

II. giao thức UDP.

1. khái niệm

2. cách hoạt động

3. cấu trúc header

4. thuật ngữ cơ bản

III. Phân biệt UDP và TCP

1. giống nhau.
 
2. nhược điểm của UDP So với TCP.

3. mốt số lợi thế của UDP so với TCP.

------------------------------------------
I. giao thứcTCP

1. khái niệm : 

- TCP là viết tắt của cụm từ Transmission Control Protocol, tức là giao thức điều khiển truyền nhận. Giao thức này đóng vai trò kiểm tra và đảm bảo sự chuyển giao thông tin từ nơi nguồn tới nơi nhận một cách an toàn và đúng thứ tự.Hơn nữa, giao thức TCP đảm bảo không xảy ra sự chậm trễ trong đường truyền làm ảnh hưởng đến chất lượng gói tin. Bên cạnh đó, TCP là giao thức hướng kết nối, nghĩa là phải thiết lập kết nối trước khi truyền dữ liệu.

2. cách hoạt động của tcp

- gồm 3 bước 

Thiết lập kết nối

truyền dữ liệu

kêt thúc kết nối

2.1 thiết lập kết nối:

- Client gửi một gói tin có cờ SYN cho server để yêu cầu mở cổng dịch vụ. Sau khi nhận được gói tin, server gửi lại gói tin có cờ SYN-ACK để xác nhận. Sau khi kết nối đã được thiết lập, client gửi tới server gói tin ACK để đáp ứng nhu cầu của server.

![image](https://user-images.githubusercontent.com/95491130/180590112-a40f9098-9655-4a73-8488-6e62f5ae6c34.png)

2.2 truyền dữ liệu:

- TCP dán nhãn các gói tin theo dạng đánh số. Với mỗi gói tin nhận được, thiết bị sẽ yêu cầu bên nhận gửi phản hồi đã nhận được cho bên gửi thông qua một gói xác nhận. Tin báo nhận chính là tín hiệu về tình trạng đường truyền giữa hai bên. Sau khi hết thời gian chờ, không nhận được xác nhận, nguồn gửi sẽ gửi lại gói tin bị mất hoặc bị hoãn. Nhờ vậy, các vấn đề về lặp gói tin, truyền lại các gói dữ liệu bị hỏng hoặc mất và sai thứ tự gói tin đều được giải quyết.

2.3 kết thúc kết nối: 

- Khi muốn đóng liên kết, bên client sẽ gửi đi một gói tin FIN cho server. Sau khi nhận được gói FIN, server gửi lại gói ACK để hồi đáp, đồng thời vào trạng thái đóng liên kết và gửi tiếp gói FIN. Sau khi client nhận được gói FIN, client sẽ gửi gói ACK để xác nhận. Cuối cùng, server nhận được gói ACK xác nhận và đóng liên kết.

![image](https://user-images.githubusercontent.com/95491130/180590141-937a827e-78ff-4eb2-aa61-ee7417d31836.png)

3. các lớp mô hình TCP:
 
- TCP hoạt động dựa trên mô hình client-server. Trong mô hình đó, client gửi yêu cầu đến server và đợi câu trả lời. Đồng thời, server chấp nhận tất cả các yêu cầu hợp lệ từ client và phản hồi những yêu cầu đó.

-vCác bước cần thực hiện trên client và server như sau.

-vPhía client:

Tạo một đối tượng.

Kết nối với server.

Lấy luồng giao tiếp.

Thực hiện giao tiếp với server.

Đóng luồng và socket.

- Phía server:

Tạo một đối tượng để bắt đầu “lắng nghe” trên một cổng cục bộ.

Đợi và chấp nhận kết nối từ client.

Thực hiện giao tiếp với client.

Đóng socket.

![image](https://user-images.githubusercontent.com/95491130/180590224-bb3c57fe-a368-400d-9c90-e4ef4b2f887a.png)

4. các loại giao thức TCP:

- HTTP là giao thức truyền tải siêu văn bản được sử dụng cho World Wide Web (www). Giao thức này có cổng mặc định là TCP 80, đồng thời các cổng khác cũng có thể được sử dụng. HTTP được sử dụng để phân phối dữ liệu như các tệp HTML, các file ảnh giữa một web client và một web server. HTTP xác định cách client gửi một yêu cầu đến server và cách server phản hồi yêu cầu này.

- HTTPS là giao thức truyền tải siêu văn bản bảo mật và là phiên bản an toàn của HTTP. Giao thức HTTPS thường được dùng để gửi dữ liệu cần bảo mật cao như giao dịch ngân hàng hoặc dữ liệu cá nhân.

- FTP là giao thức truyền tập tin giữa hai hoặc nhiều máy tính thông qua Internet. Giao thức này hoạt động chủ yếu trên 2 cổng là 20 và 21. FTP giúp các máy tính có thể gửi và nhận dữ liệu một cách trực tiếp.

5. Bảo mật của tcp:

- Sau khi kết nối được thực hiện, TCP sẽ giúp di chuyển dữ liệu theo hai chiều. Giao thức này cung cấp các chức năng sửa lỗi và xử lý kiểm soát luồng nhằm đảm bảo việc phân phối gói tin đến người nhận. Nếu bất kỳ gói tin nào bị mất, TCP sẽ khôi phục dữ liệu và gửi lại.

- Vì vậy, TCP đảm bảo chất lượng gói tin và có độ tin cậy cao. Tuy nhiên, nó tiêu tốn khá nhiều thời gian để kiểm tra và kiểm soát dữ liệu. Bởi vậy, TCP thường được dùng trong các trường hợp yêu cầu độ tin cậy cao nhưng không yêu cầu tốc độ như web hay email.

----------------------------------------------------------

II. Giao thức UDP.

1. khái niệm.

- UDP là viết tắt của cụm từ User Datagram Protocol. UDP là một phần của bộ giao thức Internet được sử dụng bởi các chương trình chạy trên các máy tính khác nhau trên mạng. Không giống như TCP/IP, UDP được sử dụng để gửi các gói tin ngắn gọi là datagram, cho phép truyền nhanh hơn. Tuy nhiên, UDP không cung cấp kiểm tra lỗi nên không đảm bảo toàn vẹn dữ liệu.

![image](https://user-images.githubusercontent.com/95491130/180590467-37159883-183c-4366-bb18-0a517cc3f64f.png)

2. cách hoạt đông của UDP

- Giao thức UDP hoạt động tương tự như TCP nhưng nó không cung cấp kiểm tra lỗi khi truyền gói tin.

- Khi một ứng dụng sử dụng UDP, các gói tin chỉ được gửi đến người nhận. Người gửi không đợi để đảm bảo người nhận nhận được gói tin hay không, mà nó tiếp tục gửi các gói tiếp theo. Nếu người nhận bỏ lỡ một vài gói tin UDP, gói tin đó bị mất vì người gửi sẽ không gửi lại chúng. Điều này có nghĩa là các thiết bị có thể giao tiếp nhanh hơn.

3. cấu trúc UDP header.

![image](https://user-images.githubusercontent.com/95491130/180590499-b295a517-adc1-4abc-af52-72ced92ec75a.png)

- Source port: Số cổng của thiết bị gửi. Trường này có thể đặt là 0 nếu máy tính đích đến không cần trả lời người gửi.

- Destination port: Số cổng của thiết bị nhận.

- Length: Xác định chiều dài của toàn bộ datagram: phần header và dữ liệu. Chiều dài tối thiểu là 8 byte khi gói tin không có dữ liệu, chỉ có header.

- Checksum: Kiểm tra lỗi của phần header và dữ liệu. Việc sử dụng checks

4. các thuật ngũ cơ bản:

- packet: là dãy các số nhị phân, biểu diễn dữ liệu và các tín hiệu điều khiển và tinh chỉnh, các gói tin này được chuyển đi và chuyển tới host. Trong gói tin, thông tin được sắp xếp theo một khuôn dạng cụ thể.

- Datagram: Một datagram là một gói tin độc lập, tự chứa, mang từ A đến Z dữ liệu để định tuyến từ nguồn tới đích mà không cần thông tin thêm.

- MTU: là một đặc trưng của tầng mối liên quan mô tả số byte thông số tối đa hoàn toàn có thể truyền trong một gói tin. Mặt khác, MTU là gói dữ liệu lớn nhất mà môi trường mạng cho trước rất có thể truyền. Ví dụ, Ethernet có MTU cố định là 1500 byte. Trong UDP, nếu kích thước của một datagram lớn hơn MTU, IP sẽ thực hiện phân đoạn, chia datagram thành các phần nhỏ hơn (các đoạn), vì vậy mỗi đoạn nhỏ có kích thước nhỏ hơn MTU.

- port: UDP tận dụng các cổng để ánh xạ thông số đến vào một tiến trình cụ thể đang chạy trên một máy tính. UDP định đường đi cho packet tại vị trí định hướng với cách dùng số hiệu cổng được định hướng trong header của datagram. Các cổng được biểu hiện bởi các số 16-bit, vì thế các cổng nằm trong dải từ 0 đến 65535. 

- Chú ý rằng các cổng UDP có thể nhận nhiều hơn một thông điệp ở một thời điểm. Trong một số tình huống, các dịch vụ TCP và UDP rất có thể sử dụng cùng một số hiệu cổng, như 7 (Echo) hoặc trên cổng 23 (Telnet).

-------------------------------------------------------------

III. Phân biệt UDP và TCP.

1. giống nhau.

- cùng nằm ở tầng giao vận ( transport ) của mô hình kiến trúc phân tầng TCPIP.

- dùng để truyền dữ liệu giữa client và server.

2. nhược điểm của UDP So với TCP.

![image](https://user-images.githubusercontent.com/95491130/180593821-d01ae9ea-430f-49e2-99fc-da788de6cd98.png)

3. mốt số lợi thế của UDP so với TCP.

- Tốc độ truyền dữ liệu nhanh chóng 

- phiên truyền thông nhanh gọn dành cho trường hợp dữ liệu không cần chính xác hoàn toàn.

- băng thông cần để sử dụng thấp giúp tiết kiệm chi phí.




















