cáp mạng
---------------------------------------------------
mục lục:

1. khái niệm về cáp mạng:
2. cáp xoắn đôi: 
3. cáp ethenet - cáp xoắn đôi thông dụng nhất
4. cáp đồng trục:
5. cáp quang:
6. một số nguyên tắc cài đặt cáp:


------------------------------------

1. khái niệm về cáp mạng:

- Cáp mạng và cáp thông tin liên lạc là phần cứng mạng được sử dụng để kết nối một thiết bị mạng này với các thiết bị mạng khác

2. cáp xoắn đôi: 

- Cáp xoắn đôi là một loại dây dẫn trong đó hai dây dẫn (thường là đồng) của một mạch đơn được xoắn lại với nhau.

- Cáp xoắn đôi thường được sử dụng trong các mạng dữ liệu cho các kết nối ngắn và trung bình, vì chi phí thấp hơn so với cáp quang và cáp đồng trục.

- Tác dụng của việc xoắn 2 dây dẫn: giúp giảm nhiễu xuyên âm giữa các dây

2.1 phân loại

2.1.1 cáp xoắn đôi STP:  Cáp xoắn đôi được che chắn bởi vỏ chống nhiễu được gọi là cáp xoắn được bảo vệ (STP).

- cắp xoắn đôi STP có vỏ chống nhiễu riêng: có lá nhôm cho mỗi cặp xoắn hoặc hai cặp xoắn một. Loại vỏ chống nhiễu này bảo vệ cáp khỏi hiện tượng nhiễu điện từ bên ngoài (EMI) vào hoặc ra khỏi cáp, và cũng bảo vệ các cặp xoắn lân cận khỏi hiện tượng nhiễu xuyên âm

- cáp xoắn đôi STP có vỏ chỗng nhiễu chung(OSTP): có vỏ chống nhiễu chung hoặc vỏ chống nhiễu riêng trên tất cả các cặp trong cáp xoắn đôi. Loại vỏ chống nhiễu này giúp ngăn EMI xâm nhập hoặc thoát khỏi cáp. Một cáp STP có thể có cả vỏ chống nhiễu chung và riêng.

![image](https://user-images.githubusercontent.com/95491130/180722597-692da851-5e1c-4842-9246-f331af027af2.png)


2.1.2 cáp xoắn đôi UTP: cặp xoắn đôi không được che chắn bởi vỏ chống nhiễu (UTP) sẽ để trần, không được bảo vệ.

- Cáp UTP không có vỏ chống nhiễu dễ bị ảnh hưởng bởi hiện tượng nhiễu từ bên ngoài. Vì lý do đó, loại cáp này thường được tìm thấy trong các ứng dụng điện thoại trong nhà. Cáp điện thoại ngoài trời chứa hàng trăm hoặc hàng ngàn cặp. Các cặp có cùng tốc độ xoắn trong cáp có thể phải chịu một số mức độ nhiễu xuyên âm, vì vậy các cặp dây này thường được lựa chọn cẩn thận trong một cáp lớn để giảm hiện tượng nhiễu xuyên âm.

- Hầu hết cáp UTP sử dụng đầu nối RJ45, trông giống như đầu nối điện thoại (RJ11) nhưng có 8 dây thay vì 4 dây.

![image](https://user-images.githubusercontent.com/95491130/180722520-7a4ef2a3-594a-4a4b-a3aa-6873ce613f9d.png)

2.1.3 tính chất của cap xoắn đôi: 

- chi phí thấp

- phân đoạn mạng và dò tìm lỗi cáp đơn giản nhờ sử dụng thiết bị switch 

- cáp đôi xoắn chia thành nhiều nhóm (category).

3. cáp ethenet - cáp xoắn đôi thông dụng nhất

- Cáp Ethernet là một loại cặp xoắn điển hình, và có lẽ là cáp quen thuộc nhất đối với tất cả chúng ta. Bảng sau cung cấp thông tin cơ bản về một số cáp Ethernet.

![image](https://user-images.githubusercontent.com/95491130/180722811-667bdbbf-339c-45a3-a652-3349f37a395a.png)

4. cáp đồng trục:

- Cáp đồng trục là một loại cáp có dây dẫn bên trong được bao quanh bởi lớp cách điện hình ống, và ngoài cùng là một vỏ chống nhiễu hình ống. Các dây dẫn bên trong và tấm chắn dẫn bên ngoài có cùng trục với nhau. Nhiều cáp đồng trục có lớp vỏ ngoài hoặc vỏ bọc cách nhiệt.

![image](https://user-images.githubusercontent.com/95491130/180724556-a73fe63c-b938-4883-a1c7-85553e2caad2.png)

4.1 phân loại

- cáp đồng trục RG58: cáp đồng trục gày, khá mảnh và dẻo . trở kháng 50(ôm) khả năng dẫn điện 20 AWG

- cáp đồng trục RG8: cáp đồng trục béo với điện trở 50 (ôm) dùng làm đường bus trong mạng lan ethernet 10Base5. Lõi cáp đông 14 AWG.

4.2 ưu điểm của đồng trục:

- sử dụng làm đường truyền cho tín hiệu tần số vô tuyến(RF). ứng dụng của nó bao gồm các đường dẫn kết nối máy phát vô tuyến và các receiver( bộ thu) có ăng ten, kết nối mạng máy tính âm thanh kỹ thuật số và phân phối tín hiệu truyền hình cap. có thể lắp bên canh các vật bằng kim loại và k xảy ra hiện tượng hao hụt công suất như ở các loại cáp truyền tín hiệu vô tuyến khác.

4.3 các loại đầu nối đồng trục.

![image](https://user-images.githubusercontent.com/95491130/180726507-2f5f797b-a18e-420d-8c78-dbb6bdeadaee.png)

5. cáp quang:

- Cáp quang là một phương tiện truyền dẫn tuyệt vời cho dung lượng dữ liệu cao và hỗ trợ khoảng cách dài. Nó là thành phần không thể thiếu trong bất kỳ mạng cáp quang nào. Nó có lõi sợi thủy tinh bên trong và lớp phủ ngoài bằng cao su, sử dụng chùm ánh sáng thay vì tín hiệu điện để chuyển tiếp dữ liệu. Bởi vì ánh sáng không bị hao hụt theo khoảng cách giống như tín hiệu điện, cáp này có thể truyền tín hiệu trong khoảng cách đo bằng kilomet với tốc độ truyền từ 10 Mbps lên tới 100 Gbps hoặc cao hơn.

![image](https://user-images.githubusercontent.com/95491130/180728283-3ccac65a-7295-47b7-ac60-2f5427cecd77.png)

5.1 Các vấn đề về kích thước lõi sợi: SMF và MMF

- Sợi bên trong có thể là một sợi đơn (single mode) hoặc bao gồm nhiều sợi (multimode). Nói chung, một lõi sợi đơn có bán kính là 9/125µm, trong khi lõi đa sợi có bán kính lên đến 62,5/125µm hoặc 50/125µm. Chỉ có OM1 là sợi 62,5/125µm, còn các thế hệ sau OM2, OM3, OM4, OM5 là sợi 50/125µm. Các chữ cái "OM" là viết tắt cho optical multimode. Cả sợi multimode fiber (MMF) và single mode fiber (SMF) có thể được sử dụng cho việc truyền tốc độ cao. MMF thường dùng trong khoảng cách ngắn, còn SMF dùng cho các khoảng cách xa hơn.

5.2 đầu nối sợ quang:

- Cáp quang có thể có nhiều loại đầu nối để cắm vào các cổng khác nhau của thiết bị. Hình dưới đây cho thấy một số loại đầu nối cáp quang phổ biến, trong đó LC, SC và ST là ba loại được sử dụng nhiều nhất.

![image](https://user-images.githubusercontent.com/95491130/180728568-001e1dae-fb43-4417-be3c-955d85c23f12.png)

- Ngoài ra, còn có loại đầu nối đa sợi được gọi là MTP/MPO (Multi-fiber Push On). Nó được thiết kế cho các ứng dụng băng thông cao hơn như 40GbE và 100GbE. Phiên bản 12 và 24 sợi hiện đang được sử dụng để kết nối trực tiếp với bộ thu phát 40G và 100G. Nó cũng được sử dụng trong các khu vực phân bố sợi với mật độ cao. Các phiên bản sợi cao hơn cũng có sẵn (48, 72 sợi) nhưng việc sử dụng và triển khai của chúng hiện bị hạn chế.

![image](https://user-images.githubusercontent.com/95491130/180728761-73ab6440-1cc8-4e86-9c85-f6a541802c01.png)
  
  6. một số nguyên tắc cài đặt cáp:

Luôn để độ dài cáp lớn hơn khoảng cách bạn cần. Đừng để dây cáp bị quá căng.

Kiểm tra mọi phần của mạng khi bạn cài đặt. Ngay cả khi mạng gồm toàn bộ các thành phần mới, nó vẫn có thể phát sinh vấn đề và sẽ rất khó để giải quyết sau này.

Tránh xa các hộp đèn huỳnh quang và các nguồn nhiễu điện khác ít nhất khoảng 1 mét.

Nếu cần phải chạy cáp trên sàn nhà, hãy sử dụng thiết bị bảo vệ cáp.

Dán nhãn cho cả hai đầu của mỗi dây cáp.

Buộc các cáp (không phải bằng băng dính) để giữ cho chúng không bị xê dịch.













