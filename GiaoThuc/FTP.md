**Phần 1: Mô tả sơ bộ giao thức FTP**

**FTP** (viết tắt của *File Transfer Protocol* dịch ra là "Giao thức truyền tập tin") thường được dùng để trao đổi tập tin qua mạng lưới truyền thông dùng giao thức TCP/IP.

- Hoạt động trên mô hình Client-Server.
- Không giống như các ứng dụng khác chạy trên nền TCP, FTP không chỉ cần một kết nối TCP mà các mô hình FTP được thiết kế xung quanh 2 kênh logic trong quá trình giao tiếp giữa client FTP và server FTP là control connection và data connection.
  - **Control connection:** được tạo ra khi phiên làm việc được thiết lập. Nó được duy trì trong suốt phiên làm việc và chỉ cho các thông tin điều khiển đi qua ví dụ như lệnh và trả lời. Nó không được sử dụng để gửi dữ liệu.
  - **Data connection:** Mỗi khi dữ liệu được gửi từ sever tới client hoặc ngược lại, một kết nối dữ liệu TCP riêng biệt được thiết lập giữa chúng. Dữ liệu được truyền qua kết nối này. Khi hoàn tất việc truyền dữ liệu, kết nối được hủy bỏ.

![image](https://user-images.githubusercontent.com/95491130/180397397-d9f1ecc5-a25a-45cb-921b-9f333ecb5772.png)

**1. Mô hình hoạt động của FTP**

![image](https://user-images.githubusercontent.com/95491130/180397449-525632d0-f793-480d-9a66-755c1808fd47.png)
### Tiến trình bên phía server:
- **Server Protocol Interpreter (Server-PI):** chịu trách nhiệm quản lý điều khiển kết nối trên server. Nó lắng nghe yêu cầu kết nối hướng từ users trên cổng dành riêng. Khi kết nối đã được thiết lập, nó nhận lệnh từ User-PI, gửi trả lời lại và quản lí tiến trình truyền dữ liệu trên server.
- **Server Data Transfer Process (Server-DTP):** Làm nhiệm vụ gửi hoặc nhận file từ bộ phận User-DTP. Server DTP vừa làm nhiệm vụ thiết lập kết nối kênh dữ liệu và lắng nghe một kết nối kênh dữ liệu từ user. Nó tương tác với server file trên hệ thống cục bộ để đọc và chép file.
### Các tiến trình bên phía Client:
- **User Interface:** Đây là chương trình được chạy trên máy tính, nó cung cấp giao diện xử lí cho người dùng. Nó cho phép sử dụng các lệnh đơn giản hướng tới người dùng, và cho phép người điều khiển phiên FTP theo dõi được các thông tin và kết quả xảy ra trong tiến trình.
- **User Protocol Interpreter (User-PI):** Chịu trách nhiệm quản lý kênh điều khiển phía Client. Nó khởi tạo phiên kết nối FTP bằng việc phát hiện ra yêu cầu tới phía server-PI. Khi kết nối đã được thiết lập, nó xử lí các lệnh nhận được trên giao diện người dùng, gửi chúng tới Server-PI, và nhận phản hồi trở lại. Nó cũng quản lý tiến trình User-DTP.
- **User Data Transfer Process (User-DTP):** làm nhiệm vụ gửi hoặc nhận dữ liệu từ Server-DTP. User-DTP có thể thiết lập hoặc lắng nghe yêu cầu kết nối kênh dữ liệu trên server. Nó tương tác với thiết bị lưu trữ file phía client.
## **2. Thiết lập kênh điều khiển và chứng thực người dùng trong FTP**
Trước khi kết nối được sử dụng để thực sự truyền file, kênh điều khiển cần phải được thiết lập. Bộ phận Server Protocol Interpreter (Server-PI) sẽ lắng nghe cổng TCP dành riêng cho kết nối FTP là cổng 21. Phía User-PI sẽ tạo kết nối bằng việc mở một kết nối TCP từ thiết bị người dùng tới server trên cổng đó. Sau đó là bước chứng thực .Quy luật chứng thực FTP khá đơn giản, chỉ là cung cấp username/password để đăng nhập. Quy trình này được thể hiện trong hình sau:

![image](https://user-images.githubusercontent.com/95491130/180397488-6d664378-5e3d-457e-9e1d-c0a41393ce93.png)

Trình tự của việc chứng thực như sau:

1. Người dùng gửi một username từ User-PI tới Server-PI bằng lệnh USER. Sau đó password của người dùng được gửi đi bằng lệnh PASS.
1. Server kiểm tra tên người dùng và password trong database người dùng của nó. Nếu người dùng hợp lệ, server sẽ gửi trả lời một thông báo tới người dùng rằng phiên làm việc đã được mở. Nếu người dùng không hợp lệ, server yêu cầu người dùng thực hiện lại việc chứng thực. Sau số lần chứng thực sai nhất định, server sẽ ngắt kết nối.
### **3**. **Quản lí kênh dữ liệu FTP**
Chuẩn FTP chỉ định hai phương thức khác nhau để tạo ra kênh dữ liệu:

- **Active Data Connections.**
- **Passive Data Connections:** được gọi là thiết lập kết nối dạng bị động. Phía client gửi lệnh PASV để nói với server rằng nó muốn sử dụng điều khiển dữ liệu dạng bị động. Server-PI sẽ mở một cổng và trả lời Client với một giá trị cổng. Server-PI sau đó sẽ hướng dẫn Server-DTP lắng nghe trên cổng này. User-PI sẽ hướng dẫn User-DTP tạo ra một kết nối từ cổng bên phía client tới cổng bên phía server.

![image](https://user-images.githubusercontent.com/95491130/180397520-4bf43336-f3e2-4d7e-b45b-299a518da122.png)
### **4. Các phương thức truyền dữ liệu trong FTP**
FTP có ba phương thức truyền dữ liệu, đó là: stream mode, block mode, và compressed mode.

**5. Bản tin yêu cầu**

MỞ KẾT NỐI (OPEN): Mở kết nối đến FTP server

`		`OPEN <server> <port>

ĐĂNG NHẬP (LOGIN): Đăng nhập

`		`LOGIN

NGƯỜI DÙNG (USER): Lệnh đầu tiên truyền bởi người dùng sau khi kết nối điều khiển được thực hiện

USER <SP> <username> <CRLF>

MẬT KHẨU (PASS): Trường đối số là một chuỗi Telnet chỉ định mật khẩu của người dùng. 

`	   `PASS <SP> <password> <CRLF>

HIỂN THỊ THƯ MỤC HIỆN HÀNH (PWD): Lệnh này hiển thị tên của thư mục làm việc hiện tại. 

`                     `PWD <CRLF>

THAY ĐỔI THƯ MỤC HIỆN HÀNH (CWD): Lệnh này cho phép người dùng làm việc với một thư mục hoặc tập dữ liệu khác để lưu trữ hoặc truy xuất tệp mà không làm thay đổi thông tin đăng nhập.

`		`CWD <SP> <pathname> <CRLF>

ĐỔI TÊN (RENAME): Đổi tên tệp/thư mục

ĐỔI TÊN TỪ (RNFR): Lệnh này chỉ định tên đường dẫn cũ của tệp sẽ được đổi tên. Lệnh này phải được thực hiện ngay lập tức bằng lệnh "đổi tên thành" chỉ định tên đường dẫn tệp mới.

`                         `RNFR <SP> <pathname> <CRLF>

ĐỔI TÊN THÀNH (RNTO): Lệnh này chỉ định tên đường dẫn mới của tệp được chỉ định trong lệnh "đổi tên từ" ngay trước đó. Hai lệnh cùng nhau làm cho một tập tin được đổi tên.

`                         `RNTO <SP> <pathname> <CRLF>

DANH SÁCH (LIST): 

`		`LIST <CRLF>

TẠO THƯ MỤC (MKD): Lệnh này làm cho thư mục được chỉ định trong tên đường dẫn được tạo dưới dạng thư mục (nếu tên đường dẫn là tuyệt đối) hoặc là thư mục con của thư mục làm việc hiện tại (nếu tên đường dẫn là tương đối).

`                          `MKD  <SP> <pathname> <CRLF> 

XÓA THƯ MỤC (RMD): Lệnh này làm cho thư mục được chỉ định trong tên đường dẫn bị xóa dưới dạng thư mục (nếu tên đường dẫn là tuyệt đối) hoặc là thư mục con của thư mục làm việc hiện tại (nếu tên đường dẫn là tương đối). 

`                          `RMD  <SP> <pathname> <CRLF>

XÓA FILE (DELE): Lệnh này làm cho tệp được chỉ định trong tên đường dẫn bị xóa.

`                          `DELE <SP> <pathname> <CRLF>

TẢI VỀ (DOWNLOAD): 

`		`DOWNLOAD <SP> <pathname> <CRLF>

TẢI LÊN (UPLOAD):

`		`UPLOAD <CRLF>

ĐÓNG KẾT NỐI (CLOSE):

`		`CLOSE <CRLF>

TRỢ GIÚP (HELP):

`		`HELP <CRLF>

**6, Demo sử dụng chương trình và các hình ảnh chạy thử**

- Đăng nhập: Sau khi mở kết nối thành công với FTP Server, gõ lệnh login để bắt đầu đăng nhập. Hệ thống sẽ yêu cầu bạn nhập username và password.

![image](https://user-images.githubusercontent.com/95491130/180397568-f26fe46e-1d8b-4aa4-980b-af87f2f9a1e0.png)

- Sau khi đăng nhập thành công, để xem các lệnh hỗ trợ của FTP client: nhập lệnh help. Danh sách các lệnh được hỗ trợ sẽ hiện thị ngay phía dưới.

![image](https://user-images.githubusercontent.com/95491130/180397589-b848de22-83f3-4424-99b0-eff23694d174.png)

- Để hiển thị danh sách các tệp và thư mục gõ lệnh list

![image](https://user-images.githubusercontent.com/95491130/180397620-d0815c2b-aba7-4033-958e-ecd1a3aabb01.png)

- Để hiển thị thư mục hiện hành: lệnh pwd
- Để chuyển thư mục hiện hành: lệnh cwd

![image](https://user-images.githubusercontent.com/95491130/180397655-ea12b2ef-1dc9-4285-8aa2-6a664c9b89d9.png)

- Để tạo thư mục: lệnh mkd <tên thư mục>

![image](https://user-images.githubusercontent.com/95491130/180397674-12d1940e-bccd-447e-8e92-b2341ac2b4bf.png)

- Để xóa thư mục: lệnh rmd

![image](https://user-images.githubusercontent.com/95491130/180397711-fb10dbb5-d9dc-43e9-b3cd-82e1c8161ad3.png)

- Để đổi tên thư mục: lệnh rename
- Sau khi nhập lệnh hệ thống yêu cầu bạn nhập tên thư mục muốn thay đổi
- Sau khi nhập tên thư mục muốn đổi hệ thống tiếp tục yêu cầu bạn nhập tên thư mục bạn muốn đổi thành

![image](https://user-images.githubusercontent.com/95491130/180397744-cef5391c-6ea1-45b7-85c7-42b7886ec39b.png)

- Để xóa tệp tin: lệnh dele <tên tệp>

![image](https://user-images.githubusercontent.com/95491130/180397772-b6dfd502-5758-48cd-b0b0-483f063d2756.png)

- Để tải về: lệnh dowload <tên tệp/thư mục>

![image](https://user-images.githubusercontent.com/95491130/180397814-30bf11fd-d8c0-4390-b03a-2820feaa9670.png)

- Ngay sau đó sẽ hiển thị hộp thoại Save as để chọn vị trí và tên tệp cần tải về

![image](https://user-images.githubusercontent.com/95491130/180397850-4597e0ad-2ac7-4f88-afe5-2191ccbfd1fc.png)

- Nhấn Save để tải tệp về, hệ thống sẽ thông báo “tai tep ve thanh cong”

![image](https://user-images.githubusercontent.com/95491130/180397879-ab785c31-5fff-45b5-8b7b-f53c3c86a89f.png)

- Để tải lên một tệp: lệnh upload

![image](https://user-images.githubusercontent.com/95491130/180397892-4a3d7d5e-cf43-495c-9de4-c334bc6512de.png)

- Ngay sau đó sẽ hiển thị hộp thoại Open để chọn file muốn tải lên

![image](https://user-images.githubusercontent.com/95491130/180397944-a80914ec-70a7-456f-b079-59ae7399c5ea.png)

- Nhấp Open để tải tệp lên, hệ thống sẽ thông báo “Tai tep len thanh cong”

![image](https://user-images.githubusercontent.com/95491130/180397988-75f50e2c-61cf-4458-a3ea-a60a9c6d3aef.png)




