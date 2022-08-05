# I. khái quát về MariaDB.

# 1. MariaDB là gì ? 
 
 - MariaDB là hệ quản trị cơ sở dữ liệu miễn phí được phát triển từ hệ quản trị cơ sở dữ liệu mã nguồn mở MySQL. MariaDB được phát triển nhằm thay thế công nghệ cơ sở dữ liệu MySQL, vì thế nó tương thích và cho một hiệu suất cao hơn so với MySQL
 
- Ưu điểm lớn nhất của hệ quản trị này là tương thích với nhiều hệ điều hành, bao gồm Linux CentOS, Ubuntu và Window với các gói cài đặt tar, zip, MSI, rpm cho cả 32bit và 64bit với hiệu suất cao hơn so với MySQL. 

- Vì thế, MariaDB đang ngày càng được đông đảo các nhà phát triển sử dụng, trong đó có wikipedia, Fullstack-Station,… MariaDB đang có xu hướng thay thế cho MySQL – hệ quản trị cơ sở dữ liệu mã nguồn mở lâu đời nhất được sử dụng từ trước đến nay.

- MariaDB được hình thành dựa trên nền tảng của MySQL, vì thế nó kế thừa được hầu hết các chức năng cơ bản cần thiết của MySQL. Bên cạnh đó, MariaDB cũng phát triển thêm nhiều tính năng mới và có sự nâng cấp hơn về cơ chế lưu trữ, tối ưu máy chủ.

- MariaDB có 2 bản trả phí và không cần trả phí. Tuy nhiên, với phiên bản không trả phí, người dùng vẫn có thể sử dụng đầy đủ các tính năng mà không ảnh hưởng đến việc chạy hệ thống

# 2. MySQL

- MySQL là một hệ thống quản trị cơ sở dữ liệu mã nguồn mở (gọi tắt là RDBMS) hoạt động theo mô hình client-server.\

- Với RDBMS là viết tắt của Relational Database Management System. MySQL được tích hợp apache, PHP. MySQL quản lý dữ liệu thông qua các cơ sở dữ liệu. Mỗi cơ sở dữ liệu có thể có nhiều bảng quan hệ chứa dữ liệu. MySQL cũng có cùng một cách truy xuất và mã lệnh tương tự với ngôn ngữ SQL. MySQL được phát hành từ thập niên 90s. 

# 3. lịch sử phát triển MariaDB

- Nền móng cơ sở đầu tiên của MariaDB được phát triển bởi “trụ cột” của MySQL AB là Michael “Monty” Widenius. Năm 2008, sau khi Sun mua lại MySQL AB, Michael “Monty” Widenius rời khỏi MySQL AB và tiếp tục phát triển một hệ cơ sở quản trị mới của mình.

- Đầu năm 2009, Michael cùng với 1 vài đồng nghiệp khác bắt đầu tiến hành dự án chuyên sâu về công cụ lưu trữ MySQL, sau này trở thành MariaDB. Tên gọi MariaDB được đặt tên theo tên con gái út của Widenius – Maria. Sau nhiều lần nâng cấp và phát triển, hiện tại MariaDB đã ra mắt phiên bản mới nhất là MariaDB 10.1.

# 4. ưu điểm:

              Hoàn toàn miễn phí
              Khắc phục những hạn chế của MySQL
              Bổ sung thêm nhiều Engine hơn
              Kết hợp cả SQL và NoSQL
              Hỗ trợ tiếng Việt
              
# II. cài đặt MariaDB trên CentOS 7.

# Bước 1: Chạy lệnh sau để thêm repository vào hệ thống:

        yum install wget && wget -O /etc/yum.repos.d/MariaDB.repo http://MariaDB.if-not-true-then-false.com/rhel/$(rpm -E %rhel)/$(uname -i)/10

# Bước 2: Xóa cache của yum bằng lệnh 

          yum clean all

# Bước 3: Cập nhật cái yum để cập nhật package của MariaDB bằng lệnh

            yum update

# Bước 4: Cài MariaDB bằng lệnh

          yum install MariaDB-server MariaDB-client
          
![image](https://user-images.githubusercontent.com/95491130/183021236-76e7cf06-2020-467f-b6ef-ef9c34a25aca.png)


# Bước 5: Khởi động MariaDB

          systemctl start mariadb
          systemctl enable mariadb
          systemctl status mariadb

![image](https://user-images.githubusercontent.com/95491130/183021840-e7c313ec-46ea-4617-a763-750c885e2b32.png)

# Bước 6: Mở port trên firewall.




# Bước 7: Cấu hình bảo mật MariaDB

          mysql_secure_installation
          


# Bước 8: Đăng nhập vào MariaDB Server với lệnh mysql -u root -p và nhập mật khẩu root vừa đổi




              
              
              
              
              
              
              
