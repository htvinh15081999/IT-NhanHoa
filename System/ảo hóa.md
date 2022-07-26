tìm hiểu về ảo hóa
---------------------------------
mục lục


1. khái niệm về ảo hóa.
2. Lợi thế của việc sử dụng ảo hóa.
3. thành phần chính của hệ thống ảo hóa.
4. mục đích của ảo hóa.
5. các loại ảo hóa.
6. Hypervisor




------------------------------------------------
1. khái niệm về ảo hóa.

Công nghệ ảo hóa là công nghệ được tạo ra nhằm khai thác hết khả năng làm việc của một máy chủ vật lý. Công nghệ này hỗ trợ vận hành nhiều máy chủ ảo trên cùng một máy chủ vật lý, cùng sử dụng chung các tài nguyên như CPU, RAM, ổ cứng,… và các tài nguyên khác.

Ảo hóa là việc tạo ra phiên bản ảo – chứ không phải thực – của một thứ gì đó. Chẳng hạn như hệ điều hành (OS), máy chủ, thiết bị lưu trữ hoặc tài nguyên mạng

![image](https://user-images.githubusercontent.com/95491130/180902137-0edbb988-6d74-4f66-8083-940efd32bf63.png)

2. Lợi thế của việc sử dụng ảo hóa.

giá rẻ: tiết kiệm số lượng máy chủ phần cứng, làm giảm chi phí mua và bảo trì thiết bị.

khắc phục lỗi nhanh gọn: bằng tính năng snapshots cung cấp dữ liệu cập nhật, cho phép máy ảo sao lưu và phục hồi nhanh chóng. 

kiểm tra dễ dàng: kể cả khi hệ thống gặp vấn đề nghiệm trọng thì việc kiểm tra cũng không phải dừng hay quay lại từ đầu. chỉ cần quay lại trạng thái đã snapshots trước đó và kierm tra.

sao lưu nhanh hơn: các bảo sao lưu có thể được cả máy chủ ảo và máy ảo thực hiện. snapshots thực hiện tự động sao lưu cập nhật dữ liệu liên tục.

cải thiện năng suất: hạn chế việc bảo hành quản lý máy chủ. Rút ngắn thời gian thực hiện các công việc hơn so với mô trường thông thường . Từ đó có thêm tgian để hoàn thành các nhiệm vụ quan trọng khác.

3. thành phần chính của hệ thống ảo hóa.

Host: máy chủ vật lý, cpu, ram, ổ đĩa cứng, ..... giúp phân chia tài nguyên cho các máy ảo.

Phần mềm ảo hóa( hypervisor): cung câp truy nhập cho mỗi máy chủ ảo đến tài nguyên nguyên của máy chủ vật lý. CUng cấp giao dien quan lý cho các máy chủ ảo. phan chia tài nguyên vật lý cho các máy chủ ảo.

hệ điều hành khách (guest): đc cài đặt trên 1 máy chủ ảo, thao tác như ở trên hệ điều hành thông thường.

máy ảo(virtual machine): nó hoạt động như 1 máy chủ vật lý thông thường với tài nguyên riêng giao diện riêng hệ điều hành riêng.

4. mục đích của ảo hóa.

optimization: sử dụng triệt để tài nguyên của phần cứng, hạn chế tối đa sự lãng phí, bằng các giảm số lượng thiết bị vật lý cần thiết.

availability: giúp ứng dụng hoạt động liên tục, không bị gián đoạn, k xảy ra tình trạng downtime khi phần cứng gặp sự cố, khi nâng cấp hoặc di chuyển.

Scalability: khả năng tùy biến linh hoạt thu gọn hay mở rộng mô hình server 1 cách dễ dàng hơn mà không làm ảnh hưởng đến ứng dụng.

Management: khả năng quản lý tập trung nhờ vào việc tạo nhiều bản sao của tài nguyên.

5. các loại ảo hóa.

ảo hóa mạng: kết hợp các tài nguyên sẵn có trong mạng bằng cách chia băng thông khả dụng thành các kênh độc lập dùng để gán hoặc chỉ định lại cho 1 máy chủ hoặc thiết bị cụ thể nào đó. che dấu sự phức tạp của mạng bằng cách chia thành các phần có thể quản lý được.

ảo hóa bộ nhớ: Ảo hóa bộ nhớ là tập hợp bộ nhớ vật lý từ nhiều thiết bị lưu trữ mạng thành một thiết bị lưu trữ duy nhất được quản lý từ bảng điều khiển trung tâm. Ảo hóa lưu trữ thường được sử dụng trong các mạng khu vực lưu trữ.

ảo hóa máy chủ: Ảo hóa máy chủ – hợp nhất nhiều máy chủ vật lý thành máy chủ ảo chạy trên một máy chủ vật lý duy nhất

ảo hóa dữ liệu: Ảo hóa lưu trữ được mô tả là “trừu tượng hóa” lưu trữ logic khỏi lưu trữ vật lý. Với ảo hóa lưu trữ, phương tiện lưu trữ cho dữ liệu của bạn được hợp nhất; và quản lý bởi một hệ thống lưu trữ ảo. Các máy chủ được kết nối với hệ thống lưu trữ không biết dữ liệu thực sự ở đâu.

ảo hóa ứng dụng: Ảo hóa ứng dụng – một ứng dụng chạy trên một máy chủ khác; từ đó, nó được cài đặt theo nhiều cách khác nhau. Nó có thể được thực hiện bằng cách phát trực tuyến ứng dụng; ảo hóa máy tính để bàn hoặc VDI ​​hoặc một gói VM (như VMware ACE tạo bằng trình phát). Microsoft Softgrid là một ví dụ về ảo hóa Ứng dụng.

ảo hóa phần cứng: Ảo hóa phần cứng – hoạt động bằng cách bắt chước tài nguyên phần cứng bằng lớp phần mềm (Hypervisor).

![image](https://user-images.githubusercontent.com/95491130/180905661-bf4c4e3a-fe28-4b33-92e4-7784123745f9.png)

6. Hypervisor

Hypervisor là một chương trình quản lý máy ảo. Nó hoạt động giống như một trình quản lý máy ảo quản lý nhiều máy ảo từ một nơi. Nó cho phép nhiều hệ điều hành chia sẻ một máy chủ phần cứng duy nhất.

Mỗi hệ điều hành trong hệ điều hành này bao gồm không gian xác định riêng của nó (bộ nhớ, bộ xử lý và các tài nguyên khác). Nó được sử dụng như một chương trình điều khiển; để điều khiển các bộ xử lý máy chủ và tài nguyên; bằng cách lần lượt phân bổ những gì cần thiết cho từng hệ điều hành. Vì vậy, hệ điều hành khách đó (được gọi là máy ảo) không thể xung đột với một hệ điều hành khác

Có hai loại Hypervisor: Type 1 Hypervisor và Type 2 Hypervisor




