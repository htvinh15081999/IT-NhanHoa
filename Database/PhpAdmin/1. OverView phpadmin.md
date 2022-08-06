# 1. php admin là gì ?

- Đây là công cụ quản trị MySQL được sử dụng phổ biến nhất bởi hàng triệu người dùng trên toàn thế giới, đặc biệt là các nhà quản trị cơ sở dữ liệu hay database administrator.

- Để hiểu rõ hơn, PhpMyAdmin là phần mềm mã nguồn mở được viết bằng ngôn ngữ PHP, giúp người sử dụng quản trị cở sở dữ liệu của MySQL thông qua giao diện web.

- Thay vì dùng giao diện cửa sổ dòng lệnh (command line interface), thông qua giao diện người dùng (user interface) với trình duyệt web của mình, phpMyAdmin có thể thực hiện nhiều tác vụ khác nhau. 

# 2. Các tính năng của phpMyAdmin là gì?

  ![image](https://user-images.githubusercontent.com/95491130/183241922-1123e94c-83ac-470e-a79b-a381f543a98e.png)

- Một số tính năng chung thường được sử dụng trên phpMyAdmin:

          Quản lý user(người dùng): thêm, xóa, sửa(phân quyền).
          Quản lý cơ sở dữ liệu: tạo mới, xóa, sửa, thêm bảng, hàng, trường, tìm kiếm đối tượng.
          Nhập xuất dữ liệu(Import/Export): hỗ trợ các định dạng SQL, XML và CSV.
          Thực hiện các truy vấn MySQL, giám sát quá trình và theo dõi.
          Sao lưu và khôi phục(Backup/Restore): Thao tác thủ công.

- Quản trị DBMS MySQL của phpMyAdmin

Bên cạnh việc cung cấp nhiều tính năng cần thiết như đã đề cập, phpMyAdmin còn có thể vừa làm việc với một đối tượng vừa xử lý các tình huống bất ngờ. Một vài ví dụ kể đến như SQL injection, các vấn đề phát sinh, lỗi database…

- Điểm yếu trong việc sao lưu dữ liệu của phpMyAdmin

Dù có nhiều ưu điểm song phpMyAdmin vẫn khó tránh khỏi một vài điểm yếu cố hữu. Đặc biệt, trong việc sao lưu dữ liệu thủ công sẽ không có một vài tính năng cần thiết.

Scheduling(sao lưu tự động theo lịch đặt trước): Một tính năng khá phổ biến ở những công cụ quản trị cơ sở dữ liệu.

Storage media support(hỗ trợ lưu trữ các phương tiện truyền thông): phpMyAdmin chỉ cho phép lưu các bản sao lưu vào các local drive có sẵn trên hệ thống, qua hộp thoại Save as của trình duyệt.

# 3. ưu nhược điểm:

# 3.1  ưu điểm:

- Cộng đồng hỗ trợ rộng lớn

Người sử dụng sẽ nhận được sử hỗ trợ rất lớn từ cộng đồng vì công cụ phpMyAdmin có tính chất giống với mã nguồn mở được phát triển bởi các lập trình viên trên toàn cầu. 

- Tăng hiệu quả công tác quản lý cơ sở dữ liệu

phpMyAdmin mang đến giao diện xử lý các thao tác trên cơ sở dữ liệu một cách trực quan. Từ đó, tiết kiệm thời gian, thao tác so với việc thực hiện bằng dòng lệnh trên command line.

- Đa ngôn ngữ

Hiện nay phpMyAdmin có sẵn đến 64 ngôn ngữ khác nhau và được duy trì bởi The phpMyAdmin Project. 

- Chi phí sử dụng

phpMyAdmin vẫn là công cụ được sử dụng miễn phí hoàn toàn.

# 3.2 nhược điểm:

- Database không thể tự xuất

- Chỉ có thể kết nối thông qua trình duyệt, tức chỉ lưu được các bản sao lưu vào các local drive có sẵn trên hệ thống.

-  Không được mã hóa các định dạng file xuất bằng phpMyAdmin (thiếu an toàn) và chiếm dung lượng đĩa lớn.
