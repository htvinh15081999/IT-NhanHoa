# 1. khái niệm chung về database:
 
 - Database là từ được sử dụng phổ biến trong các lĩnh vực thuộc công nghệ thông tin, dữ liệu, lập trình và phần mềm… .Database là cơ sở dữ liệu, là một bộ sưu tập dữ liệu được tổ chức bày bản và thường được truy cập từ hệ thống máy tính hoặc tồn tại dưới dạng tập tin trong hệ quản trị cơ sở dữ liệu. Database còn có thể được lưu trữ trên thiết bị có chức năng ghi nhớ như: thẻ nhớ, đĩa cứng, CD…
 
 # 2. Vai trò của database.
 
 - Database giúp đảm bảo an toàn dữ liệu
 
 - Lưu trữ thông tin lớn, có hệ thống
 
 - Đảm bảo khả năng truy xuất dữ liệu
 
 - Hạn chế tình trạng trùng lặp dữ liệu
 
 - Linh hoạt thay đổi theo nhu cầu
 
 - Công tác quản lý dễ dàng hơn
 
 - Cải thiện các chiến dịch truyền thông
 
 # 3. phân loại database.
 
 # 3.1 phân loại theo mục đích sử dụng:
 
 - Cơ sở dữ liệu Database dạng File:
 
 thường gặp và phổ biến nhất. tập tin, thông tin được lưu trữ chia sẻ truy cập dưới dạng file. Cơ sở dữ liệu dạng File thường gặp nhất chính là *.mdb Foxpro. Bên cạnh đó, cơ sở dữ liệu này còn bao gồm những định dạng khác như text, dạng file ascii, dạng file *.dbf…
 
 - Cơ sở dữ liệu Database quan hệ: 
 
 mô hình dữ liệu được sử dụng rộng rãi nhất hiện nay. Ở mô hình này, các thực thể khác nhau, tức các nguồn dữ liệu khác nhau sẽ cùng được quy hợp, lưu trữ cùng một bảng dữ liệu và các dữ liệu này phải có quan hệ với nhau. Một vài cơ sở dữ liệu nổi tiếng có hỗ trợ Database quan hệ có thể kể đến như: Oracle, MS SQL Server, MySQL…
 
 - Cơ sở dữ liệu hướng đối tượng:
 
 Hệ cơ sở dữ liệu này cũng là một bảng dữ liệu thuần. Tuy nhiên, Database bổ sung thêm các trường hợp hướng đối tượng khác như: hành vi đối tượng nhằm thể hiện hành vi của đối tượng. Các đối tượng này cũng được phân cấp rất rõ ràng, mỗi cấp được gọi là một lớp dữ liệu. Hiểu một cách đơn giản hơn, chúng là tập hợp các nhóm đối tượng trong cùng một bảng và được thể hiện bằng dòng dữ liệu. Những hệ quản trị cơ sở dữ liệu hỗ trợ Database này bao gồm: MS SQL Server, Postgres, Oracle
 
 - Database bán cấu trúc:
 
 Cơ sở dữ liệu Database bán cấu trúc có thể lưu trữ nhiều dạng dữ liệu khác nhau. Và các thông tin, dữ liệu này thường được lưu trữ dưới định dạng XML. Ở mô hình này, các thông tin mô tả dữ liệu và đối tượng đều được trình bày trong các thẻ tag. Nhờ vào ưu điểm nổi bật này, hệ cơ sở dữ liệu vừa được mở rộng, vừa tiện lợi giúp người dùng có thể dễ dàng truy xuất những thông tin cần thiết. Theo các chuyên gia nghiên cứu, Database bán cấu trúc có thể sẽ là hướng đi mới đầy tiềm năng trong các lĩnh vực ứng dụng công nghệ dữ liệu.
 
 # 3.2 phân loại theo hệ điều hành: 

- Database dùng hệ điều hành Linux: MySQL, Mariadb

- Database dùng hệ điều hành Windows: SQL Server - MSSQL
 
 # 4. ứng dụng của database: 
 
 - Hệ thống cơ sở dữ liệu đóng vai trò vô cùng quan trong trong thời đại thông tin – kỹ thuật như hiện nay. Chức năng chính của Database có thể kể đến là: lưu trữ, truy xuất và cập nhật dữ liệu cùng nhiều ứng dụng khác.
 
 - Database giúp quản lý các dịch vụ bảo mật và phục hồi hệ thống quản trị dữ liệu, giúp thực thi các ràng buộc bên trong hệ cơ sở này. Đồng thời, quản lý và kiểm soát tất cả các máy khách kết nối, truy cập vào hệ thống dữ liệu ở hệ thống nguồn. Hỗ trợ xử lý tất cả các truy cập dữ liệu và các chức năng điều khiển khác.
 
 - Ngoài ra, Database còn cung cấp tính năng kiểm soát đồng thời, giúp bảo mật chặt chẽ hơn. Tạo môi trường đa người dùng với điều kiện kết nối an toàn. Nhiều người có thể truy cập đồng thời và truy xuất được những dữ liệu cần thiết
 
 # 5. Thành phần chính: 
 
 - Phần cứng: chính là các thiết bị vật lý mà người dùng có thể trực tiếp thao tác lên chúng như: các thiết bị input/output, máy tính, thiết bị lưu trữ,...

- Phần mềm: bao gồm tất các các chương trình có chức năng quản lý và khai thác dữ liệu. Database cũng chính là một phần mềm kết hợp cùng các phần mềm khách như hệ điều hành, mạng lưới mạng đã tạo nên một hệ thống đồng nhất trong việc chia sẻ và sử dụng dữ liệu.

- Dữ liệu: là thứ mà người dùng cần trong hệ thống database, tuy nhiên vẫn cần được sắp xếp, cấu trúc lại để trở nên hữu dụng với người dùng hơn. Các dạng dữ liệu thường gặp là hình ảnh, âm thanh, ký hiệu, ký tự,...

- Quy trình: là tất cả các quy chế, hướng dẫn, cách sử dụng hệ quản trị cơ sở dữ liệu một cách đơn giản nhất. Tài liệu hóa cách thực hoạt động và vận hành của database, giúp bạn dễ dàng hướng dẫn người dùng sử dụng, điều hành và quản lý database.

- Ngôn ngữ truy cập: là ngôn ngữ giao tiếp giữ người dùng và database, cho phép thực hiện các thao tác như truy cập, chỉnh sửa, cập nhật hay truy xuất dữ liệu từ DBMS. Người dùng sẽ đưa ra yêu cầu dưới dạng ngôn ngữ database thường sẽ là những đoạn câu lệnh SQL đơn giản.
 
 # 6. Hệ điều hành Database (DMBS)
 
 - Có thể hiểu đơn giản database là nơi quản lý dữ liệu của máy tính, còn DMBS sẽ là phần mềm hỗ trợ người dùng khai thác dữ liệu đó.

- DMBS vận hành cung cấp cấp các tiện ích cơ bản như truy xuất dữ liệu, quản lý truy cập, phân tích và đọc/ghi dữ liệu.












 
 
 
 
 
