1. Tìm hiểu

- Packet Tracer là một phần mềm giả lập mạng dùng trong học tập sử dụng các thiết bị mạng (router/switch) của Cisco. Nó được hãng Cisco cung cấp miễn phí cho các trường lớp, sinh viên đang giảng dạy/ theo học chương trình mạng của Cisco. Sản phẩm cung cấp một công cụ để nghiên cứu các nguyên tắc cơ bản của mạng và các kỹ năng làm việc với hệ thống Cisco.

- Packet Tracer có giao diện người dùng dễ sử dụng kèm kéo thả các thiết bị vào mô hình, cho phép người dùng có thể thêm, xóa các mạng mô phỏng phù hợp theo ý mình. Phần mềm này chủ yếu phục vụ nhu cầu lab cho các bạn sinh viên có nhu cầu học tập nhưng không có đủ thiết bị để làm lab. Và nó cũng được Cisco Network Associate Academy chứng nhận như một công cụ giáo dục giúp các bạn hiểu các khái niệm cơ bản về CCNA.

giao diện sử dụng

![image](https://user-images.githubusercontent.com/95491130/180693215-65b2b9a8-fe55-46fe-a037-1afd8cbffda3.png)

- Một kết nối vật lý giữa 2 thiết bị trong Packet Tracer được đại diện bởi một dây cáp (cable). Packet Tracer hỗ trợ hàng loạt các giao thức tầng application, cũng như định tuyến cơ bản với RIP, OSPF, EIGRP, BGP

- packet tracer có rất nhiều thiết bị mạng giúp mô phỏng hệ thống mạng 1 cách trực quan chính xac và hiệu quả: Switch, Router, Hubs, Network devices,.....

- Packet Tracer có giao diện người dùng dễ sử dụng kèm kéo thả các thiết bị vào mô hình, cho phép người dùng có thể thêm, xóa các mạng mô phỏng phù hợp theo ý mình. 

2. Hướng dẫn cài đặt.

link youtube: https://www.youtube.com/watch?v=_Sw9s90iJ5o

3. demo packet tracer>

- Lab 1: cấu hình vào tạo vlan trên switch

![image](https://user-images.githubusercontent.com/95491130/180694719-838502b5-8c92-47d0-a509-cbb78216ed11.png)

- mô tả yêu cầu: 

cấu hình VLAN trên switch

tạo 3 VLAN: VLAN10, VLAN20, VLAN30

Fa0/1-Fa0/6: VLAN10, Fa0/7Fa0/9: VLAN20, Fa0/10Fa0/12: VLAN30.

- Các bước thực hiện:

B1: chọn thiết bị

- 3 PC-PT: đặt tên là PC1,PC2,PC3

- 1 switch 2960-24TT đặt tên là switch1

- dùng cáp ![image](https://user-images.githubusercontent.com/95491130/180695904-f51ecdb2-c4c6-4130-8fdb-c628020af1a3.png)![image](https://user-images.githubusercontent.com/95491130/180695987-3eaed8a3-a1fc-4014-9e54-7586655c55ed.png)

- nối các PC với Switch sau:

![image](https://user-images.githubusercontent.com/95491130/180696335-7c074c70-adc9-4121-aba4-27d6825e171b.png)

B2: tạo các VLAN trên SW.

- click vào switch chọn sang cli.

![image](https://user-images.githubusercontent.com/95491130/180696881-c222c726-008b-4de4-8487-80e55e2e53a9.png)

- gõ lệnh en để vào chế độ #

- tiếp theo gõ lệnh config t để vào chế độ config

![image](https://user-images.githubusercontent.com/95491130/180696960-a789a509-b0bc-4754-bd7a-460f160126c3.png)

- tạo các vlan theo yêu cầu:

![image](https://user-images.githubusercontent.com/95491130/180697146-d6f02fbf-028b-4ca1-91c4-e6d624260786.png)

- dùng lệnh end để thoát khỏi chế độ config sau đó dùng lệnh show vlan để xem các vlan trên sw

![image](https://user-images.githubusercontent.com/95491130/180697224-17edfbf9-65b3-4e70-9b51-c185573eda16.png)

B3: Gán cổng vào VLAN.

- gan cong cho vlan10

![image](https://user-images.githubusercontent.com/95491130/180697404-43ee65cd-7329-4762-88d7-a14f7ed4a585.png)

- gan cong cho vlan20

![image](https://user-images.githubusercontent.com/95491130/180697638-ebd22af6-52fd-45a3-9c21-c4ca8254c829.png)

- gan cong cho vlan30

![image](https://user-images.githubusercontent.com/95491130/180697667-e5b94a03-9d8e-40f4-918a-9adc32696059.png)

chung ta co the xem ket qua sau khi gan:

![image](https://user-images.githubusercontent.com/95491130/180697718-377c710a-9bc7-4a15-b2f0-32ce3e226cd7.png)

 B4: xem cau hinh va kiem tra ket qua bang lenh 
 
 ![image](https://user-images.githubusercontent.com/95491130/180697825-8a2e4def-6fa5-45ad-b1ce-b3585a25f7f0.png)

 






