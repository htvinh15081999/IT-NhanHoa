# mục lục:

I. khái quát về MariaDB.

1. MariaDB là gì ? 
2. lịch sử phát triển MariaDB
3. ưu điểm:

II. cài đặt MariaDB trên CentOS 7.

-----------------------------------------------------------------------------------------------------------------------



# I. khái quát về MariaDB.

# 1. MariaDB là gì ? 
 
 - MariaDB là hệ quản trị cơ sở dữ liệu miễn phí được phát triển từ hệ quản trị cơ sở dữ liệu mã nguồn mở MySQL. MariaDB được phát triển nhằm thay thế công nghệ cơ sở dữ liệu MySQL, vì thế nó tương thích và cho một hiệu suất cao hơn so với MySQL
 
- Ưu điểm lớn nhất của hệ quản trị này là tương thích với nhiều hệ điều hành, bao gồm Linux CentOS, Ubuntu và Window với các gói cài đặt tar, zip, MSI, rpm cho cả 32bit và 64bit với hiệu suất cao hơn so với MySQL. 

- Vì thế, MariaDB đang ngày càng được đông đảo các nhà phát triển sử dụng, trong đó có wikipedia, Fullstack-Station,… MariaDB đang có xu hướng thay thế cho MySQL – hệ quản trị cơ sở dữ liệu mã nguồn mở lâu đời nhất được sử dụng từ trước đến nay.

- MariaDB được hình thành dựa trên nền tảng của MySQL, vì thế nó kế thừa được hầu hết các chức năng cơ bản cần thiết của MySQL. Bên cạnh đó, MariaDB cũng phát triển thêm nhiều tính năng mới và có sự nâng cấp hơn về cơ chế lưu trữ, tối ưu máy chủ.

- MariaDB có 2 bản trả phí và không cần trả phí. Tuy nhiên, với phiên bản không trả phí, người dùng vẫn có thể sử dụng đầy đủ các tính năng mà không ảnh hưởng đến việc chạy hệ thống
 

# 2. lịch sử phát triển MariaDB

- Nền móng cơ sở đầu tiên của MariaDB được phát triển bởi “trụ cột” của MySQL AB là Michael “Monty” Widenius. Năm 2008, sau khi Sun mua lại MySQL AB, Michael “Monty” Widenius rời khỏi MySQL AB và tiếp tục phát triển một hệ cơ sở quản trị mới của mình.

- Đầu năm 2009, Michael cùng với 1 vài đồng nghiệp khác bắt đầu tiến hành dự án chuyên sâu về công cụ lưu trữ MySQL, sau này trở thành MariaDB. Tên gọi MariaDB được đặt tên theo tên con gái út của Widenius – Maria. Sau nhiều lần nâng cấp và phát triển, hiện tại MariaDB đã ra mắt phiên bản mới nhất là MariaDB 10.1.

# 3. ưu điểm:

              Hoàn toàn miễn phí
              Khắc phục những hạn chế của MySQL
              Bổ sung thêm nhiều Engine hơn
              Kết hợp cả SQL và NoSQL
              Hỗ trợ tiếng Việt
              
# II. cài đặt MariaDB trên CentOS 7.

# Bước 1: Cài MariaDB bằng lệnh

          yum install MariaDB-server MariaDB-client
          
![image](https://user-images.githubusercontent.com/95491130/183021236-76e7cf06-2020-467f-b6ef-ef9c34a25aca.png)

# Bước 2: Khởi động MariaDB

          systemctl start mariadb
          systemctl enable mariadb
          systemctl status mariadb

![image](https://user-images.githubusercontent.com/95491130/183021840-e7c313ec-46ea-4617-a763-750c885e2b32.png)

# Bước 3: Cấu hình bảo mật MariaDB

          mysql_secure_installation
          
- Khi được nhắc nhập mật khẩu, ta có thể nhấn Enter để trống hoặc cập nhật mật khẩu mới

Sau đó làm các bước để thiết lập mật khẩu. Cuối cùng, tập lệnh sẽ yêu cầu định cấu hình một số biện pháp bảo mật, bao gồm:

           Xóa người dùng ẩn danh?

           Không cho phép đăng nhập từ xa?

           Xóa cơ sở dữ liệu thử nghiệm và truy cập vào nó?

           Tải lại bảng đặc quyền ngay bây giờ
          
![image](https://user-images.githubusercontent.com/95491130/183023923-996bcb1c-9078-4a09-9eeb-302eb2efc310.png)

![image](https://user-images.githubusercontent.com/95491130/183024046-a678a9e5-27aa-41c0-8dec-8d68a89798d5.png)

# Bước 4: Đăng nhập vào MariaDB Server với lệnh mysql -u root -p và nhập mật khẩu root vừa đổi

          mysql -u root -p

![image](https://user-images.githubusercontent.com/95491130/183024205-a3bba9e6-af93-415b-97d8-1bad1215595b.png)



              
              
              
              
              
              
              
