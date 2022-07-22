1. Khái niệm SSH(SSecure Socket Shell): giao thức mạng dùng để thiết lập để kết nối mạng 1 cách bảo mật. Hoạt động ở lớp trên mô hình phân cấp TCP/IP. Mã hóa kết nối để tạo ra 1 kênh truyền thông private.

![image](https://user-images.githubusercontent.com/95491130/180406641-6a537aa7-975a-4ec8-8abf-0a7dc9efa900.png)

2. cách thức làm việc của SSH: thông qua 3 bước đơn giản:

- Định danh host - xác định định danh của hệ thống tham gia phiên làm việc SSH.

- Mã hoá - thiết lập kênh làm việc mã hoá.

- Chứng thực - xác thực người sử dụng có quyền đăng nhập hệ thống.

2.1 Định danh host:

- thực hiện việc trao đổi khóa. Mỗi máy tính có hỗ trợ kiểu truyền thông SSH có 1 khóa định danh duy nhất. khóa này gồm 2 thành phần: khóa riêng và khóa công khai. 

- khóa công cộng: sử dụng khi 2 máy chủ cần trao đổi với nhau trong phiên SSH, dữ liệu được mã hóa bằng khóa riêng và được giải mã bằng khóa công khai. 

- bắt đầu phiên SSH: 

B1: máy chủ gửi khóa công cộng cho máy khách

B2:máy khách sinh khóa ngẫu nhiên và mã hóa khóa này bằng key public của máy chủ sau đó gửi sang máy chủ

B3:máy chủ giải mã khóa phiên này bằng khóa riêng và nhận được khóa phiên. Khóa phiềm dùng để trao đồi dữ liệu 2 máy. Quá trình nhận diện máy chủ và máy khách.

2.2 Mã hóa:

- quá trình gửi nhận dữ liệu trên đường truyền đều được mã hóa và giải mã theo cơ chế thỏa thuận giữa máy chủ và máy khách.

- các cơ chế mã hóa và giải mã phổ biến:  3DES, IDEA, và Blowfish

- Khi cơ chế mã hoá được lựa chọn, máy chủ và máy khách trao đổi khoá mã hoá cho nhau. Việc trao đổi này cũng được bảo mật dựa trên đinh danh bí mật của các máy. Kẻ tấn công khó có thể nghe trộm thông tin trao đổi trên đường truyền vì không biết được khoá mã hoá.

2.2.1 các cách mã hõa:

- Mã hóa mật mã khóa công khai: mỗi bên sử dụng 1 cặp khóa gồm khóa công khai và khóa riêng. Khóa công khai có thể cho tất cả cùng biết còn khóa riêng phải giữ bí mật. Mỗi khóa riêng phải tồn tại 1 khóa công khai và 2 khóa này phải khác nhau. 2 khóa này có tính đối ngẫu. có thế mã hóa bằng khóa công khai và giải mã bằng khóa riêng hoặc ngược lại. 

- Mã hóa Hashing( băm): Hash một chiều khác với cả 2 phương thức mã hóa trên ở chỗ nó không được sinh ra để giải mã. Thay vào đó, nó tạo ra một giá trị duy nhất với độ dài nhất định cho mỗi lần nhập liệu mà không có hướng nào khác để khai thác.

- Mã hóa mật mã khóa đối xứng: còn gọi là hệ mật mã khóa bí mật. mã hóa và giải mã sử dụng chung 1 khóa K. Cần có cơ chế chia sẻ khóa giữa 2 bên truyền và nhận. Khóa K phải giữ bí mật tuyệt đối. chuẩn mã DES 

2.3 Chứng thực: 

- Tại thời điểm này, kênh trao đổi bản thân nó đã được bảo mật. Mỗi định danh và truy nhập của người sử dụng có thể được cung cấp theo rất nhiều cách khác nhau. Chẳng hạn, kiểu chứng thực rhosts có thể được sử dụng, nhưng không phải là mặc định; nó đơn giản chỉ kiểm tra định danh của máy khách được liệt kê trong file rhost (theo DNS và địa chỉ IP). 

- Việc chứng thực mật khẩu là một cách rất thông dụng để định danh người sử dụng, nhưng ngoài ra cũng có các cách khác: chứng thực RSA, sử dụng ssh-keygen và ssh-agent để chứng thực các cặp khoá.

3. mục đích sử dụng:

- Mục đích SSH được tạo ra là để thay thế cho trình giả lập Terminal, cơ chế đăng nhập không an toàn (Telnet, Rlogin). Giao thức SSH hỗ trợ tính năng đăng nhập, khởi chạy Terminal Session thông qua hệ thống điều khiển từ xa.

4. các chức năng chính:

Hỗ trợ truy cập từ xa vào những hệ thống, thiết bị ứng dụng giao thức SSH.

Cho phép dịch chuyển file an toàn.

Thực thi lệnh bảo mật, an toàn trên hệ thống điều khiển từ xa.

Quản lý an toàn và hiệu quả thành phần hạ tầng mạng.

SSH có thể kết hợp với Terminal Session thay thế cho những chương trình Telnet có tính bảo mật thấp.

5. so sánh SSH với Telnet.

- Telnet được biết đến như một trong những giao thức internet ra đời sớm nhất. Giao thức này có khả năng khởi tạo và duy trì trình giả lập Terminal thông qua một Host từ xa.

- điểm khác biệt lớn nhất giữa SSH và Telnet là cơ chế bảo mật.

![image](https://user-images.githubusercontent.com/95491130/180413150-4cd46fd8-fcec-4210-8760-0d75f9ee51a7.png)







