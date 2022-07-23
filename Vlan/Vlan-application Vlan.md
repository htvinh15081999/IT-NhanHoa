tìm hiểu về VLAN:
-----------------------------------------
Mục lục:
1. khái niệm Vlan:
2. phân loại:
3. Cách hoạt động:
4. lợi ích của Vlan:
5. các trường hợp có cân nhắc về việc sử dụng vlan:
6. ứng dụng của VLAN:

---------------------------------
1. khái niệm Vlan:
- Vitual LAN: là kỹ thuật được sử dụng trên switch dùng để chia 1 sw vật lý thành nhiều sw luận lý. mỗi sw luận lý gọi là 1 vlan hoặc có thể hiểu  vlan là 1 tập hợp các cổng trên sw nằm trong cùng 1 miền quảng bá. các cổng trên sw có thể đc nhóm vào các vlan khác nhau tren 1 sw hoặc đc triển khải nhiều sw.

 ![image](https://user-images.githubusercontent.com/95491130/180598005-696f21ad-5300-4fea-81ff-4508233a7782.png) 
 
- khi có 1 goi tin quảng bá đc gửi bởi 1 thiết bị nằm trong 1 vlan sẽ được chuyển đén các thiết bị khác nằm trong cùng vlan đó, gói tin quảng bá sẽ không đc chuyển tiếp đến các thiết bị thuốc Vlan khác.
- vlan cho phép người quản trị tổ chức mạng theo luận lý chứ không theo vật lý. Sử dụng vlan có ưu điểm là:

tăng khả năng bảo mật

thay đổi cấu hình lan dẽ dàng

di chuyển máy trạm trong lan dễ dàng

them máy trạm vào lan dễ dàng

vlan= broadcasr domain = logic network

2. phân loại:

- Vlan tĩnh(static Vlan)

![image](https://user-images.githubusercontent.com/95491130/180598138-092806ae-5bde-4166-8479-8d0a6d32bbc0.png)

đối với loại này các cổng sw đc cấu hình thuộc về cùng 1 vlan nào đó, các thiết bị gắn vào cổng đó sẽ thuộc về vlan đã định trc. đây là loại vlan dùng phổ biến.

- vlan động (dynamic vlan):

![image](https://user-images.githubusercontent.com/95491130/180598178-c89e9d96-ed4e-47d5-a915-0a46a42d73b7.png)

loại vlan này sử dụng 1 server lưu trữ địa chỉ MAC của các thiết bị và quy định vlan mà thiết bị đó thuộc về, khi 1 thiết bị gắn vào sw, sw sẽ lấy địa chỉ MAC của thiết bị và gửi cho sv kiểm tra và cho vào vlan định trước.

3. Cách hoạt động:

-   VLAN được tạo bằng cách thêm tag hoặc header vào mỗi frame Ethernet. Tag này cho mạng biết frame sẽ được gửi đến VLAN nào. Các thiết bị trong những VLAN khác nhau không thể nhìn thấy lưu lượng của nhau trừ khi chúng đều kết nối với router được cấu hình cho phép việc này.

4. lợi ích của Vlan:

- Tiết kiệm băng thông của hệ thống mạng

- Tăng khả năng bảo mật

- Dễ dàng thêm hay bớt máy tính vào VLAN

- Giúp mạng có tính linh động cao

5. các trường hợp có cân nhắc về việc sử dụng vlan: 

- Bạn có hơn 200 máy tính trong mạng LAN

- Lưu lượng quảng bá (broadcast traffic) trong mạng LAN của bạn quá lớn

- Các nhóm làm việc cần gia tăng bảo mật hoặc bị làm chậm vì quá nhiều bản tin quảng bá.

- Các nhóm làm việc cần nằm trên cùng một miền quảng bá vì họ đang dùng chung các ứng dụng. Ví dụ như một công ty sử dụng điện thoại VoIP. Một số người muốn sử dụng điện thoại có thể thuộc một mạng VLAN khác, không cùng với người dùng thường xuyên.

- Hoặc chỉ để chuyển đổi một switch đơn thành nhiều switch ảo.

6. ứng dụng của VLAN:

- Giả sử một công ty có 3 bộ phận là: Engineering, Marketing, Accounting, mỗi bộ phận trên lại trải ra trên 3 tầng. Để kết nối các máy tính trong một bộ phận với nhau thì ta có thể lắp cho mỗi tầng một switch. Điều đó có nghĩa là mỗi tầng phải dùng 3 switch cho 3 bộ phận, nên để kết nối 3 tầng trong công ty cần phải dùng tới 9 switch. Rõ ràng cách làm trên là rất tốn kém mà lại không thể tận dụng được hết số cổng (port) vốn có của một switch. Chính vì lẽ đó, giải pháp VLAN ra đời nhằm giải quyết vấn đề trên một cách đơn giản mà vẫn tiết kiệm được tài nguyên.

![image](https://user-images.githubusercontent.com/95491130/180598883-6df461bc-7d7d-4fe7-b708-e3cc3fa32c85.png)


- Như hình vẽ trên ta thấy mỗi tầng của công ty chỉ cần dùng một switch, và switch này được chia VLAN. Các máy tính ở bộ phận kỹ sư (Engineering) thì sẽ được gán vào VLAN Engineering, các PC ở các bộ phận khác cũng được gán vào các VLAN tương ứng là Marketing và kế toán (Accounting). Cách làm trên giúp ta có thể tiết kiệm tối đa số switch phải sử dụng đồng thời tận dụng được hết số cổng (port) sẵn có của switch.



