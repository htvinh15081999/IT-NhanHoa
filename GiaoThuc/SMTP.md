1. **Giao thức SMTP:**
- **Mục đích của giao thức SMTP**
  - Là để truyền email tin cậy và hiệu quả từ người gửi đến người nhận. Giao thức không phụ** thuộc vào hệ thống cụ thể của các bên tham gia vào giao thức, chỉ cần các bên có kết nối** qua 1 kênh truyền dữ liệu tin cậy (sử dụng TCP).
  - Các bên tham giao vào giao thức gồm có User Agent (Mail Client) và Mail Server. Một** đặc tính quan trọng của giao thức SMTP là cho phép chuyển tiếp email từ 1 User-Agent**
    qua các hệ thống Mail Server trung gian cho đến Mail Server của địa chỉ người nhận. Tuy** nhiên, đồ án giới hạn việc truyền email chỉ diễn ra giữa User Agent (Client) và Mail Server** (không bao gồm chuyển tiếp)
- **Mô hình hoạt động:** 

![](Aspose.Words.459ca001-0f65-497d-9433-d1d57268fa5f.001.png)

- **Giao thức SMTP được thiết kế theo mô hình truyền thông như sau**
  - ` `Sender-SMTP là chương trình Client. Khi người dùng user có yêu cầu gửi email,** Client sẽ thiết lập 1 kết nối TCP đến Receiver-SMTP (chính là chương trình Server)
  - SMTP Server có thể là điểm đến cuối cùng của email hoặc một điểm trung chuyển.** Trong giới hạn đồ án, SMTP Server sẽ là điểm đến cuối cùng
  - Client sẽ tạo các bản tin request chứa các lệnh SMTP và gửi đến Server
  - Server xử lý lệnh và trả lời bằng cách gửi bản tin phản hồi cho Client
- **Một giao dịch truyền Email giữa Client và Server diễn ra theo cách như sau**
  - Sau khi kết nối được thiết lập, Server gửi 1 bản tin thông báo trạng thái hiện tại của Server
    - Client gửi lệnh HELO và thông báo tên Client. Server gửi phản hồi thông báo tên của Server
    - ` `Nếu trạng thái của Server là sẵn sàng phục vụ và Server trả lời OK với lệnh HELO của Client, Client gửi lệnh MAIL để bắt đầu phiên giao dịch email và báo cho Server địa chỉ người gửi email (có thể bao gồm tên và địa chỉ email của người gửi)
    - Nếu Server chấp nhận người gửi đó, sẽ gửi một phản hồi báo là đồng ý
    - Client sau đó gửi lệnh RCPT để báo cho Server địa chỉ người nhận email (có thể gồm cả tên và địa chỉ email của người nhận)
    - Server có thể trả lời đồng ý nếu chấp nhận hoặc từ chối nếu không chấp nhận. Lý do không chấp nhận là vì Server không trực tiếp quản lý địa chỉ email của người
      nhận hoặc không thể chuyển tiếp email cho người nhận đó.
    - Client và Server có thể tiếp tục trao đổi thỏa thuận về những người nhận tiếp theo ( Một email có thể gửi đến cho nhiều người nhận)
    - Sau khi đã hoàn thành việc cung cấp địa chỉ người nhận cho Server, Client sẽ chuyển
      nội dung email cho Server, kết thúc bằng 1 chuỗi kí hiệu đặc biệt.
    - ` `Server nhận xong email sẽ lưu thành file vào thư mục email của người nhận trên ổ đĩa của Server (Server trong phạm vi của đồ án không chuyển tiếp email). Sau khi xử lý thành công, Server gửi phản hồi đã hoàn thành cho Client.
  - Các bước trên phải thực hiện theo đúng thứ tự từng bước để Client gửi thành công 1 email. Nếu Client muốn gửi 1 email tiếp theo trong cùng 1 phiên thì lại bắt đầu với bước gửi lệnh MAIL. Nếu Client không còn email để gửi thì có thể kết thúc phiên bằng cách gửi lệnh QUIT. Server sẽ phản hồi và sau đó đóng kết nối TCP.
- **Một số quy định khác trong mô hình hoạt động của giao thức SMTP**
  - ` `Cú pháp bản tin được quy định chặt chẽ. Bản tin phản hồi sẽ có mã ở dạng số. Mô tả chi tiết sẽ có ở phần sau
  - ` `Lệnh trong bản tin yêu cầu không phân biệt chữ hoa và chữ thường. Chú ý là địa chỉ email thì vẫn có thể phân biệt chữ hoa và chữ thường
  - Tất cả các bản tin đều ở định dạng xâu kí tự theo bảng mã kí tự chuẩn ASCII
- **Các thủ tục chức năng của SMTP:**
  - Thủ tục chức năng chính trong giao thức SMTP chính là chức năng truyền email, còn gọi** là giao dịch mail giữa Client và Server
  - Một số thủ tục khác (mà phạm vi đồ án không yêu cầu) như kiểm tra địa chỉ email có hợp** lệ, hoặc các thủ tục liên quan đến chuyển tiếp email giữa các Server sẽ không được trình** bày ở đây
  - Thủ tục MAIL sẽ làm rõ thêm mô tả chung về mô hình hoạt động của SMTP đã nói ở trên)

\- **MAIL procedure: thủ tục chức năng truyền email**
Thủ tục này sẽ giúp Client hoàn thành chức năng chuyển giao 1 email đến Server cho 1 hoặc nhiều người nhận.
Có 3 bước trong thủ tục truyền email.
**- Bắt đầu với lệnh MAIL từ Client**
MAIL (SP) FROM:<địa chỉ email người gửi> (CRLF)
(SP) là kí tự trống, CRLF là 2 kí tự \r \n
Lệnh này sẽ báo cho Server biết một giao dịch chuyển email mới bắt đầu để Server thiết lập lại các bảng trạng thái phiên, các vùng đệm chứa dữ liệu, các danh sách địa chỉ email người gửi và người nhận mà Server quản lý trong phiên này. Nếu chấp nhận lệnh này, Server sẽ gửi trả lời với mã 250
\- Tiếp theo Client gửi 1 hoặc nhiều lệnh RCPT
`   `**RCPT (SP) TO:<địa chỉ email người nhận> (CRLF)**

Lệnh này sẽ báo cho Server biết một địa chỉ email của 1 người nhận đối với giao dịch email này. Nếu chấp nhận, Server sẽ gửi trả lời với mã 250. Nếu không biết (hoặc quản lý) địa chỉ người nhận, Server sẽ gửi trả lời với mã 550 (báo cho Client có lỗi xảy ra với lệnh
RCPT). Lệnh RCPT có thể lặp lại nhiều lần cho nhiều người nhận email.
**Cuối cùng là lệnh DATA để thực hiện truyền nội dung mail từ Client đến Server.**
DATA (CRLF)
Nếu chấp nhận lệnh, Server sẽ trả lời với mã 354 và sau đó coi những dữ liệu nhận được sau đó từ Client là nội dung của email. Trong quá trình nhận, Server sẽ lưu dữ liệu email vào file trong thư mục hộp thư của người nhận. Khi hoàn thành nhận nội dung email, Server sẽ trả lời với mã 250.
Do dữ liệu email được gửi trên cùng 1 kênh truyền TCP với lệnh và phản hồi, Client phải
chỉ báo cho Server biết kết thúc của nội dung email bằng 1 chuỗi kí tự đặc biệt là *(CRLF).(CRLF)*
Nói cách khác, dấu hiệu kết thúc email là một dòng văn bản chỉ chứa 1 kí tự là dấu .
Khi nhận được chỉ báo kết thúc email, nếu chấp nhận, Server sẽ hoàn thành việc lưu email, sau đó gửi phản hồi mã 250. Lệnh DATA thường chỉ lỗi nếu quá trình giao dịch email không đầy đủ các bước mô tả ở đây (ví dụ như Client không gửi lệnh MAIL hoặc RCPT) hoặc khi Server gặp lỗi trong việc lưu email vào hộp thư của người nhận.
Sau đây là minh họa việc sử dụng lệnh và phản hồi trong một giao dịch email. Trong đó C là Client, S là Server. Server quản lý trực tiếp các địa chỉ email của tên miền nuce.edu.vn (không quản lý gmail.com)
C: MAIL FROM:<tuan@nuce.edu.vn>
S: 250 OK
C: RCPT TO:<hung@nuce.edu.vn>
S: 250 OK
C: RCPT TO:<thanh@gmail.com>
S: 550 No such user here
C: RCPT TO:<toan@nuce.edu.vn>
S: 250 OK
C: DATA
S: 354 Start mail input; end with CRLF.CRLF
C: Blah blah blah...
C: Blur Blur Blur...
C: .
S: 250 OK
3.1 ) CLOSE procedure: chức năng kết thúc phiên và đóng kết nối
Để đóng kết nối và kết thúc 1 phiên giao dịch email, Client chủ động gửi lệnh QUIT cho Server.
C: QUIT
S: 221 Bye. Server closing transmission channel
Sau đó Server đóng kết nối TCP.

