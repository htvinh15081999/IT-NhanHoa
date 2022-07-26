TÌm hiểu về NAT
-----------------------
mục lục

1. khái niệm về NAT ( network address translation).
2. chức năng của NAT
3. IP Public và IP private
4. Phân loại NAT.
5. một số thuật ngữ cần biết
6. ưu nhược điểm của NAT






-------------------------------------------------
1. khái niệm về NAT ( network address translation).

- kỹ thuật chuyển đổi IP nội miền sang IP ngoại miền. Quá trình chuyển đổi này tương tự như việc hỗ trợ mạng cục bộ Private dễ dàng truy cập vào mạng internet công cộng.

2. chức năng của NAT

- trong hệ thống NAT giữ vai trò di chuyển gói tin giữa các lớp mạng khác nhau. NAT chuyển đổi địa chỉ IP trong từng gói tin và chuyển dến router cùng 1 số thiết bị khác.

![image](https://user-images.githubusercontent.com/95491130/180682514-f2f8298e-88d5-4b07-8586-dcc89832ed6b.png)

- Trong quá trình chuyển gói tin từ mạng public dến mạng private và ngược lại, NAT cần tiến hành thay đổi dịa chỉ IP đích sang địa chỉ IP nội bộ sau đó mới chuyển gói tin đi.

- NAT còn hoạt động như tường lửa hỗ trợ bảo mật IP của thiết bị giả sử máy tính bị gián đoạn  khi kết nối internet IP pubic khi đó lập tức chuyển đổi thành iP thay thế mạng cục bộ.

3. IP Public và IP private

3.1 IP public

- IP Public chính là IP ngoại miền. Thực chất, đây là dạng địa chỉ cung cấp bởi tổ chức nắm quyền điều phối mạng internet. Chẳng hạn như phía nhà mạng cung cấp dịch vụ internet.

- Mỗi IP Public luôn mang tính duy nhất, cung cấp bởi phía nhà mạng internet. Điều này đồng nghĩa người dùng không thể tự động thay đổi IP.

![image](https://user-images.githubusercontent.com/95491130/180682969-e2c62eba-18b7-414a-afaa-2adbd70cebef.png)


3.2 IP private

- Từng thiết bị hoạt động trong hệ thống mạng nội bộ LAN đều có một địa chỉ IP Private riêng. Mỗi IP Private đều có khả năng liên kết với nhau hình thành mạng router. Tuy nhiên, chúng không kết nối trực tiếp với hệ thống internet bên ngoài.

![image](https://user-images.githubusercontent.com/95491130/180682983-c759aa86-0ae9-4cb4-ad49-33b9b40ceb73.png)

4. Phân loại NAT.

4.1 static NAT:

- Static NAT được dùng để chuyển đổi một địa chỉ IP này sang một địa chỉ khác một cách cố định, thông thường là từ một địa chỉ cục bộ sang một địa chỉ công cộng và quá trình này được cài đặt thủ công, nghĩa là địa chỉ ánh xạ và địa chỉ ánh xạ chỉ định rõ ràng tương ứng duy nhất.

- Static NAT rất hữu ích trong trường hợp những thiết bị cần phải có địa chỉ cố định để có thể truy cập từ bên ngoài Internet. Những thiết bị này phổ biến là những Server như Web, Mail,...  

![image](https://user-images.githubusercontent.com/95491130/180684147-45603401-ddf1-4d18-b7f4-597b7d20bedc.png)

4.2 Dynamic NAT

- Dynamic NAT được dùng để ánh xạ một địa chỉ IP này sang một địa chỉ khác một cách tự động, thông thường là ánh xạ từ một địa chỉ cục bộ sang một địa chỉ được đăng ký. Bất kỳ một địa chỉ IP nào nằm trong dải địa chỉ IP công cộng đã được định trước đều có thể được gán một thiết bị bên trong mạng.

![image](https://user-images.githubusercontent.com/95491130/180684716-0c19cdf3-b17c-4a89-8ab5-2bc7054b8848.png)

4.3 NAT Overload

- Nat Overload là một dạng của Dynamic NAT, nó thực hiện ánh xạ nhiều địa chỉ IP thành một địa chỉ (many - to - one) và sử dụng các địa chỉ số cổng khác nhau để phân biệt cho từng chuyển đổi. NAT Overload còn có tên gọi là PAT (Port Address Translation).

- Chỉ số cổng được mã hóa 16 bit, do đó có tới 65536 địa chỉ nội bộ có thể được chuyển đổi sang một địa chỉ công cộng.

![image](https://user-images.githubusercontent.com/95491130/180685040-2158848e-cd2c-4cc1-afbe-3bd8d28fb914.png)

- Tóm lại, Static NAT được sử dụng để ánh xạ địa chỉ theo kiểu “one-to-one” và được chỉ định bởi người quản trị. Dynamic NAT là kiểu chuyển dịch địa chỉ dạng “one-to-one” một cách tự động. NAT Overload là kiểu chuyển dịch địa chỉ dạng “many-to-one” một cách tự động, sử dụng các chỉ số cổng (port) để phân biệt cho từng chuyển dịch.

5. một số thuật ngữ cần biết


- Inside local: Địa chỉ IP ứng với mỗi thiết bị nằm trong mạng nội bộ nhưng không cung cấp bởi Network Information Center.

- Inside global: Kiểu địa chỉ IP đăng ký tại Network Information Center. Đây là địa chỉ phù hợp để thay thế cho IP Inside local.

- Outside local: Địa chỉ IP ứng với một thiết bị hoạt động tại mạng bên ngoài. Theo đó, những thiết bị thuộc mạng mạng bên trong có khả năng tìm thấy thiết bị khác hoạt động bên ngoài nhờ vào địa chỉ IP Outside local. Địa chỉ IP này không nhất thiết cần đăng ký tại Network Information Center. Bởi đôi khi nó có thể là một IP Private.

- Outside global: Địa chỉ IP ứng với thiết bị hoạt động tại hệ thống mạng bên ngoài, hoàn toàn hợp lệ với mạng internet.

6. ưu nhược điểm của NAT

6.1 ưu điểm: 

- Tiết kiệm địa chỉ IPv4: Nguy cơ thiếu hụt địa chỉ IPv4 rất cao vì lượng người dùng truy cập Internet đang dần tăng. NAT sẽ giảm thiểu được số lượng địa chỉ IP cần sử dụng.

- Giúp che giấu IP bên trong mạng LAN.

- Chia sẻ tài nguyên Internet: NAT có thể chia sẻ kết nối Internet cho nhiều máy tính, thiết bị di động khác nhau trong mạng LAN chỉ với một địa chỉ IP public duy nhất.

- Giúp nhà quản trị mạng lọc được các gói tin đến và xét duyệt quyền truy cập của IP public đến 1 port bất kỳ.

6.2 Nhược điểm:

- Ảnh hưởng đến tốc độ đường truyền của mạng Internet: Khi dùng kỹ thuật NAT, CPU sẽ phải kiểm tra và tốn thời gian để thay đổi địa chỉ IP. Phải thực hiện việc chuyển 
đổi địa chỉ trong các gói dữ liệu làm tăng độ trễ trong quá trình switching.

- Khó tìm kiếm: NAT có khả năng che giấu địa chỉ IP trong mạng LAN. Do đó, kỹ thuật viên sẽ gặp khó khăn khi cần kiểm tra nguồn gốc IP hoặc truy tìm dấu vết của gói tin.
Và cũng vì NAT giấu địa chỉ IP nên sẽ khiến cho  vài ứng dụng cần sử dụng IP không thể hoạt động được.




----------------------------------------------------------------
link tham khảo:
https://www.totolink.vn/article/90-3-loai-nat-network-address-translation-ban-can-biet.html

https://fptcloud.com/nat-la-gi/

https://wiki.tino.org/nat-la-gi/
