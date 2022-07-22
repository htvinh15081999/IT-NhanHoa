1. **DNS (Domain Name System)**
- **Khái niệm chung:** là hệ thống phân giải tên miền. DNS đc phát minh vào năm 1984 cho Internet, chỉ một hệ thống cho phép thiết lập tướng ứng giữa dchi IP và tên miền.

![](Aspose.Words.2ee7102f-412f-4a75-824e-5e3667e792ff.001.png)

- **Chức năng:** dịch tên miền sang địa chỉ IP gồm 4 nhóm số khác nhau. Ví dụ: *www.tenmien.com* thành 421.64.874.899
- **Các dịch vụ của DNS:**
  - Chuyển dịch tên miền sang IP add
  - Cung cấp “bí danh” alias cho trạm và server bên trong mạng
  - Chia tải: nếu sv thiết lập nhiều web servers cho cùng một  website thì sẽ cung cấp 1 tập IP add cho 1 tên miền
- **Các bản ghi của DNS:**
  - **CNAME Record (Bản ghi CNAME)**: Cho phép bạn tạo một tên mới, điều chỉnh trỏ tới tên gốc và đặt TTL. Tóm lại, tên miền chính muốn đặt một hoặc nhiều tên khác thì cần có bản ghi này. 
  - **A Record**: Bản ghi này được sử dụng phổ biến để trỏ tên Website tới một địa chỉ IP cụ thể. Đây là bản ghi DNS đơn giản nhất, cho phép bạn thêm Time to Live (thời gian tự động tái lại bản ghi), một tên mới và Points To ( Trỏ tới IP nào).
  - **MX Record**: Với bản ghi này, bạn có thể trỏ Domain đến Mail Server, đặt TTL, mức độ ưu tiên (Priority). MX Record chỉ định Server nào quản lý các dịch vụ Email của tên miền đó.
  - **AAAA Record**: Để trỏ tên miền đến một địa chỉ IPV6 Address, bạn sẽ cần sử dụng AAA Record. Nod cho phép bạn thêm Host mới, TTL,IPv6.
  - **TXT Record**: Bạn cũng có thể thêm giá trị TXT, Host mới, Points To, TTL. Để chứa các thông tin định dạng văn bản của Domain, bạn sẽ cần đến bản ghi này.
  - **SRV Record**: Là bản ghi dùng để xác định chính xác dịch vụ nào chạy Port nào. Đay là Record đặc biệt trong DNS. Thông qua nó, bạn có thể thêm Name, Priority, Port, Weight, Points to, TTL.
  - **NS Record**: Với bản ghi này, bạn có thể chỉ định Name Server cho từng Domain phụ. Bạn có thể tạo tên Name Server, Host mới, TTL.
- **Các loại DNS Server:**
  - **Root Name Servers**( 13 root server trên thế giới):** Đây là máy chủ tên miền chứa các thông tin, để tìm kiếm các máy chủ tên miền lưu trữ (authority) cho các tên miền thuộc mức cao nhất (top-level-domain).
  - **Top-level domain (TLD) servers:**
    - chịu trách nhiệm tên miền com, org, net, edu,.. , và tất**
      cả các tên miền quốc gia uk, fr, ca, jp, vn…
    - Tổ chức Network Solutions quản lý các servers dành cho com TLD
    - Tổ chức Educause quản lý các edu TLD
  - ` `**Authoritative DNS servers:**
    - DNS servers của các công ty, tổ chức, trường học …,**
      cung cấp ánh xạ giữa hostname và IP của các server**
      hoặc các trạm thuộc mạng của tổ chức (ví dụ như**
      Web, mail).
    - Được duy trì bên trong mạng của tổ chức hoặc đặt tại** ISP
  - **Name Server nội bộ (local)**
    - Mỗi hệ thống mạng của ISP địa phương, công ty,**
      tổ chức, trường đại học thường sử dụng một**
      name server nội bộ (“default name server”)
    - ** Khi ứng dụng trên máy trạm cần truy vấn tên, nó**
      gửi một truy vấn (query) DNS đến name server**
      nội bộ
    - Nếu server biết câu trả lời cho truy vấn thì nó sẽ**
      phản hồi ngay
  - Nếu không biết, nó chuyển tiếp query đến một**
    name server thích hợp trong hệ thống DNS
- **Minh họa Cách thức hoạt động của DNS**
  - Truy vấn kiểu đệ quy:
    - Trạm cis.poly.edu yêu cầu phân giải tên miền gaia.cs.umass.edu
    - Đường đi của các bản tin DNS và tiến trình diễn ra theo trình tự như hình vẽ.
    - Các name server đảm nhận việc chuyển tiếp query và phản hồi.

![](Aspose.Words.2ee7102f-412f-4a75-824e-5e3667e792ff.002.png)

- Truy vấn kiểu tuần tự: 
  - Name server cục bộ đảm nhiệm chính việc truy vấn.
  - Server nhận được truy vấn sẽ trả lời và gửi lại local name server địa chỉ của server tiếp theo trong chuỗi.
  - Trả lời” không biết nhưng anh có thể hỏi server này”.
- **DNS: cache và cập nhật các bản ghi**
  - Khi 1 name server “học” được 1 ánh xạ thông tin DNS có sẽ caches ánh xạ đó ( lưu vào bộ nhớ đệm tạm thời cache)
  - Mỗi mục ánh xạ được cache có 1 khoảng thời gian time out
  - Các local name servers thường cache ánh xạ tên miền và địa chỉ của TLD server.
- **Khuôn dang bản tin:**

![](Aspose.Words.2ee7102f-412f-4a75-824e-5e3667e792ff.003.png)

![](Aspose.Words.2ee7102f-412f-4a75-824e-5e3667e792ff.004.png)




