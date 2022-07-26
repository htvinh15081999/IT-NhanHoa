Tìm hiểu về KVM.
--------------------------------
mục lục:





----------------------------------------------
1. khái niệm về KVM

KVM ( kernel based virtual machine): là công nghệ ảo hóa phần cứng , có nghĩa là hệ điều hành chính cố nhiệm vụ mô phỏng phần cứng cho các hệ diều hành khác để chạy trên đó. do đó ảo hóa kvm chia sẻ các nguồn tài nguyên máy chủ (ổ đĩa, Netwwork, CPU, Ram) một cách công bằng.

![image](https://user-images.githubusercontent.com/95491130/180940901-ccc6b93a-4708-4379-82e4-bb07057e232a.png)

Ngoài ra công nghệ ảo hóa KVM còn đc tích hợp trong linux như sau:

- chuyển linux thành ảo hóa để máy chủ chạy trên nhiều môi trường ảo riêng biệt còn gọi là máy khách hoặc máy ảo.

- KVM là 1 một phần của mã nguồn mở linux, do đó kvm cũng hưởng các tiện ích khi linux luôn cung cấp bản sửa lỗi hay cập nhật kịp thời

- ảo hóa không cung cấp tài nguyên dùng chung, do đo tài nguyên máy chủ của mỗi kvm được định sẵn cho từng gói Cloud Server, để có thể tận dụng triệt để 100% tài nguyên và không bị chia sẻ (shared). Điều này sẽ giúp cho máy chủ hoạt động được ổn định hơn, ngoài ra sẽ không bị ảnh hưởng bởi các máy chủ khác chung hệ thống.

2. các tính năng:

- bảo mật: khi công nghệ kvm kết hợp với linux sẽ giúp tăng khả năng bảo mật

SELinux: xây dựng ranh giới bảo về quanh máy ảo

SVirt: đẩy mạnh khả năng của selinux tăng khả năng bảo mật kiểm soát truy cập bắt buộc MAC dùng cho máy ảo khách chống lỗi ghi nhãn thủ công cách ly VM.

- lưu trữ: KVM cho phép người dùng sử dụng các loại lưu trữ được linux hỗ trợ như:bộ lưu trữ gắn mạng NAS , ổ đĩa cục bộ, khi đó bạn cũng có thể luu trữ dữ liệu được ảo hóa bởi nhiều máy chủ.

- hỗ trợ phần cúng: có thể sử dụng được trên nhiều nền tảng phần cứng khác nhau được linux hỗ trợ.

- quản lý bộ nhớ RAM: kê thừa các chức năng quản lý ram của linux bao gồm truy cập bộ nhớ ram không đồng nhất và hợp nhất cùng 1 trang. bộ nhớ RAM của máy chủ ảo có thể hoán đổi , được hỗ trợ bởi khối lượng lớn để có hiệu suất tốt hơn.

- di chuyển trục tiếp: cho phép bạn di chuyển máy chủ ảo trực tiếp nghĩa là di chuyern 1 máy chủ ảo đang chạy mà không gây sự gián đoạn giữa các máy chủ vật lý. Lúc này KVM vẫn đc bật, mọi kết nối mạng và ứng dựng vẫn haotj đông bình thường. Đồng thời trong quá trình di chuyển nó không quên thực hiện cả các thao tác lưu trữ.

hiệu suất khả năng mở rộng: do kvm sở hữu các ưu điểm của linux đồng thời có khả năng mở rộng giúp đáp ứng nhu cầu cảu máy khách khi truy cập tăng lên nhiều lần. Ngoài ra công nghệ ảo hóa KVM cho phép khối lượng công việc khắt khe nhất và là cơ sở cho nhiều thiết lập ảo hóa dành cho doanh nghiệp, điển hình như: trung tâm dữ liệu, máy chủ ảo cloud server và công nghệ đám mây riêng.

- lập lịch và trình kiểm soát tài nguyên: trong mô hình ảo hóa KVM máy chủ ảo là 1 tiến trình trong linux đc lập lịch và quản lý bởi kernel( nhân hệ diều hành) bộ lập lịch Linux cho phép kiểm soát chi tiết tài nguyên được phân bổ cho 1 quy trình linux để đảm bảo chất lượng dịch vụ.

- độ trễ thấp hơn và mức độ ưu tiên cao: nhận hệ điều hành linux có tác tính năng mở rộng thời gian thực cho phép các ứng dụng dựa trên máy ảo chạy ở độ trễ thấp hơn với mức độ ưu tiên tốt hơn(so với ảo hóa thông thường). kernel cũng chia các quy trình đồi hỏi thời gian tính toán dài thành các thành phần nhỏ hơn,sau đó được lập lịch và xử lý.

3. ưu nhược điểm của kvm

- ưu điểm: 

Khả năng linh hoạt: Mặc dù máy chủ gốc được cài đặt Linux, nhưng KVM hỗ trợ tạo máy chủ ảo có thể chạy cả Linux, Windows. Khi được sử dụng kết hợp với QEMU, KVM có thể chạy Mac OS X. Ngoài ra, KVM cũng hỗ trợ cả x86 và x86-64 system.

Có tính độc quyền cao: Cấu hình từng gói Cloud Server KVM sẽ chỉ được một máy chủ sở hữu và toàn quyền sử dụng tài nguyên đó (bao gồm Ổ đĩa, Network, CPU, Ram, …) mà không hề bị chia sẻ hay ảnh hưởng bởi các Cloud Server khác hoạt động trên cùng hệ thống.

Độ bảo mật chắc chắn: Nhờ tích hợp các đặc điểm bảo mật của Linux như SELinux với các cơ chế bảo mật nhiều lớp, KVM bảo vệ các máy ảo tối đa và cách ly hoàn toàn, tránh bị xâm hại.

Giúp tiết kiệm chi phí, độ mở rộng cao: Do được phát triển trên nền tảng mã nguồn mở hoàn toàn miễn phí và được hỗ trợ từ cộng đồng và nhà sản xuất thiết bị, KVM ngày càng lớn mạnh và trở thành một lựa chọn hàng đầu cho doanh nghiệp có chi phí thấp nhưng hiệu quả sử dụng đem lại cao.

- nhược điểm:

Do là công nghệ ảo hóa hoàn toàn phần cứng, KVM yêu cầu cấu hình máy chủ vật lý khá cao. Thậm chí còn yêu cầu phải sử dụng các máy chủ của các thương hiệu lớn thì mới đảm bảo hoạt động tốt.

Công nghệ ảo hóa KVM chỉ có sẵn trong các hệ thống sử dụng Linux.

Cần tốn khá nhiều thời gian để nghiên cứu và học tập để có thể đưa KVM vào sử dụng.

Do tập trung hóa phần cứng nên rủi ro tăng cao trong trường hợp hệ thống bị lỗi.

4. cách thức hoạt động của kvm:

- KVM chuyển đổi linux thành 1 trình ảo hóa loại 1 và hoạt động như sau:

KVM giúp cung cấp 1 số thành phần cấp hệ điều hành, chẳng hạn như trình quản lý bộ nhớ, bộ lập lịch xử lý, ngăn xếp đàu vào, đầu ra , trình điều khiển thiết bị trình quản lý bảo mật, ngăn xếp mạng, .. để có thể chạy ảo hóa.

mọi ảo hóa sẽ đc triển khai nhu 1 quy trình linux thông thường được lên lịch sẵn bởi bộ lập lịch linux tieu chuẩn, với phần cứng ảo chuyên dụng như card mang, bộ điều phối đồ họa, CPU, bộ nhớ và đĩa.

![image](https://user-images.githubusercontent.com/95491130/180945531-a6bb7113-8498-4a73-9f24-b0b6c7eca447.png)



























