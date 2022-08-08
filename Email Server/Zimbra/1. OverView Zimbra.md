# 1. Zimbra server.

- là bộ phần mềm bao gồm máy chủ email và máy khách website. Zimbra là ứng dụng mã nguồn mở miễn phí, với tính năng, độ ổn định và bảo mật cao. Zimbra còn là 1 giải pháp 1 hệ thống khá hoàn chỉnh để triển khai môi trường chia sẻ công việc phục vụ cho quản lý công việc.

# 2. Tính năng chính:

- Thư điện tử: là 1 hệ thống thư điện tử hoàn chỉnh gồm mail server  (SMTP, POP3, IMAP, antivirus, antispam, openLDAP, backup, …, có đầy đủ các tính năng như auto-reply, auto-forward, mail filter, …) và Mail client (Zimbra desktop và Zimbra Web Client).

- Lịch công tác (calender): lịch cá nhân và lịch nhóm, tự động gửi mail mời, họp,...

- số địa chỉ (contacts): sổ cá nhân và sổ chung của nhóm.

- danh mục công việc ( task): của cá nhân và nhóm

- tài liệu documents: tài liệu dưới dạng wiki của cá nhân hoặc của tập thể.

- cặp hồ sơ (briefcase): luu file dùng riêng hoặc dùng chung.

- chat: chát nội bộ trong mạng lan hoặc trên internet.

- tất cả các phần trên đều có phần chạy trên máy chủ(nằm trong zimbra server). lưu trên máy chủ để có thể dùng chung được và truy cập được từ bất kỳ đâu có internet ( nếu cài trên máy chủ có internet). các mục đó đều có khả năng share ( kể cả các thu mục mail: inbox, sent) cho người khác dùng chung.

# 3. tương thích với người dùng:

- zimbra có 2 phần mềm client: zimbra desktop, zimbra web client la giao diện với người dùng. Zimbra desktop(tương tự như outlock, kmail,...) cài đc trên windows, linux, mac. Ngoài ra có thể dùng các mail client khác như outlock, evolution, kmail, ..... 2 loại mail client trên ứng với 2 cách làm việc:

làm việc online, dùng zimbra web client, mọi thông tin sẽ lưu trên máy chủ zimbra. zimbra web client có 2 loại giao diện: dạng html thông thường, nhanh nhưng ít tính năng và dạng Ajax(tương tự Yahoo Mail). Zimbra web client là 1 trong những web client hoàn chỉnh nhất hiện nay ( hỗ trợ hầu hết tính năng của zimbra server kể cả chat).

làm việc offline dùng các mail client còn lại riêng outlook, apple desktop và evolution có thể đồng bộ email, clendar,contacts, task với máy chủ zimbra các mail client khác chỉ dùng đọc và gửi mail.\

- zimbra cũng hỗ trợ làm việc với các điện thoại di động.

# 4. Kiến trúc:

- về kiến trúc bên trong zimbra vẫn sử dụng các bộ phần mềm chức năng phổ biến như OpenLDAP, Postfix, SpamAssassin, Amavisd, Tomcat, … cùng với 1 số phần mềm riêng tạo nên 1 hệ thống tích hợp chặt chẽ. có thể không dùng OpenLDAP mà dùng windows Active Directory, hoặc import user từ 1 máy chủ Exchange sang.

- hiện tại zimbra server có các bản cài redhat,fedora, centos,..... nếu chỉ cài trên 1 máy chủ độc lập thì cách cài đặt khá đơn giản và nhanh.

- zimbra có thể cài theo nhiều cấu hình khác nhau từ 1 hệ thống nhỏ cài chục account trên 1 máy chủ duy nhất cho đến hệ thống rất lớn hàng nghìn account trên nhiều máy chủ có chức năng khác nhau. có khả năng mở rộng bằng cách thêm máy chủ dễ dàng,

- Zimbra có 1 kho các Zimlet (một thứ tương tự các extensions của Firefox) mà các quản trị mạng có thể chọn cài để bổ xung tính năng. mọi người có thể tự viết các zimlet để kết nối hệ thống zimbra với các hệ thống thông tin khác hoặc mở rộng tính năng. Đây có lẽ là 1 trong những điểm mạnh nhất sẽ gây nghiện cho người dùng giống như extensions của firefox vây.

- quản trị hệ thống qua giao diện web khá đầy đủ và chi tiết với nhiều tiện ích. ví dụ có thể tạo hàng trăm account trong vài phút.
