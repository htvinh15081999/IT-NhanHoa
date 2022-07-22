1. **Các giao thức theo mô hình TCP/IP:**
1. **HTTP:** 
- **Khái niệm chung:** Giao thức truyền siêu văn bản nằm ở tầng ứng dụng của mô hình TCP/IP, quy định cách thức truyền các đối tượng của web dựa theo mô hình Client/ Server.
  - Client: Trình duyệt web gửi yêu cầu, nhận dữ liệu, và hiển thị đối tượng của trang web
  - Server: gửi nội dung dữ liệu của đối tượng tương ứng với yêu cầu

![image](https://user-images.githubusercontent.com/95491130/180398537-51b52ce5-38c7-4435-91c1-465ba7a5bc54.png)

- **Các thức hoat động:** Client ( browser) khi cần tài 1 trang sẽ mở kết nối TCP đến server ( cổng 80). Server chấp nhận kết nối đến client. Client và server sẽ trao đổi các bản tin theo quy định của giao thức HTTP. Với mỗi đối tượng cần tải về Client 1 bản tin yêu cầu. Server gửi bản tin phản hồi và đối tượng được yêu cầu. Sau đó đóng kết nối TCP.
- **HTTP:**  là giao thức không lưu trạng thái. Server không lưu lại thông tin về các yêu cầu trước đó của client.
- **Kết nối HTTP:**

|Nonpersistent HTTP|Persistent HTTP|
| :-: | :-: |
|Mỗi kết nối tcp giữa client và server chỉ sử dụng để vận chuyển nhiều nhất 1 đối tượng|<p>Nhiều đối tượng có thể được tải về thông qua 1 kết nối duy nhất</p><p></p>|
|1 yêu cầu và 1 phản hồi/ 1 kết nối|Nhiều cặp yêu cầu/ phản hồi/1 kết nối TCP|

![image](https://user-images.githubusercontent.com/95491130/180398622-171d269c-667a-40d7-9d14-2710dcec4271.png)  ![image](https://user-images.githubusercontent.com/95491130/180398641-d9126149-04e3-4fcf-a91a-39e8b519a546.png)


- **So sánh giữa non và pre HTTP:**


|Non HTTP|Pre HTTP|
| :- | :- |
|<p>- Tốn thời gian để OS lập kết nối</p><p>- Trình duyệt thường phải mở song song nhiều kết nối TCP để tải các file</p>|<p>- Server và client vẫn duy trì kết nối sau mỗi yêu cầu/phản hồi</p><p>- Các bản tin tiếp theo sẽ gửi/ nhận qua kết nối đang mở đó</p><p>- Client sẽ gửi yêu cầu ngay khi cần</p><p>- Gần như chỉ cần 2 RTT cho tất cả các đối tượng</p><p></p>|

- **Cú pháp bản tin request: dạng text, chia thành dòng và có thể đọc được.**

![image](https://user-images.githubusercontent.com/95491130/180398757-881127cf-780d-4fe9-9e1c-b03f5cebe45c.png)

- **Cú pháp tổng quát:** 

![image](https://user-images.githubusercontent.com/95491130/180398773-5650eb01-5753-4692-b2ab-e958de1fb1c9.png)

- **Các kiểu lệnh:**

|HTTP/1.0|HTTP/1.1|
| :- | :- |
|GET|GET, POST, HEAD|
|POST|PUT: upload file trong phần thân của bản tin ( entity body) đến đường dẫn path chỉ ra trong url|
|<p>HEAD</p><p>Yêu cầu server gửi bản tin response chỉ có phần tiêu để ( header)</p>|DELETE: yêu cầu xóa file ra trong trường URL|

- **Bản tin phản hồi:**

![image](https://user-images.githubusercontent.com/95491130/180398808-72311888-8a10-4c40-8403-9ee594f0799e.png)

- **Các mã trạng thái thường gặp trong response.**
  - 200 OK : yêu cầu đáp ứng thành công, đối tượng được yêu cầu lưu trong phần thân của bản tin
  - 301 Moved Permanently: đối tượng yêu cầu đã bị di chuyển, địa chỉ mới được yêu cầu trong phần sau của bản tin( trường location)
  - 400 Bad Request:  server không hiểu bản tin yêu cầu ( lỗi sai cú pháp).
  - 404 Not Found: Đối tượng ( tài liệu ) được yêu cầu không tìm thấy.









