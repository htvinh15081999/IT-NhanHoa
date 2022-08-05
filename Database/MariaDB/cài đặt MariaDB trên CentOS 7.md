             
# . cài đặt MariaDB trên CentOS 7.

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



              
              
              
              
              
              
              
