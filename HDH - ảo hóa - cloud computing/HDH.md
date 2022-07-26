Tìm hiểu về hệ diều hành.
----------------------------------
mục lục:

1. định nghĩa về hệ điều hành:
2. Phân loại:
3. các tính chất của hệ điều hành.
4. Nguyên tắc xây dựng hệ điều hành
5. cấu trúc của hệ điều hành
6.Các hệ điều hành được sử dụng trong doanh nghiệp.



---------------------------------------------------
một hệ thống máy tính gồm 4 phần: 

- phần cứng

- hệ điều hành

- các chương trình ứng dụng

- người sử dụng

![image](https://user-images.githubusercontent.com/95491130/180699188-b4ff2b55-fd87-4968-b3b4-7188365c493f.png)

1. định nghĩa về hệ điều hành:

- Xét về phía người sử dụng: HĐH tạo môi trường giao diện giữa người dùng và máy tính, cho phép người dùng đưa ra chỉ thị hoạt động điều khiển hệ thống.

- Xét về phía trình ứng dụng: HĐH tạo môi trường cho các chương trình hoạt động. Cung cấp cơ chế kích hoạt và loại bỏ các trình ứng dụng

- Xét về phía phần cứng: HĐH quản lý các thiết bị 1 cách có hiệu quả, khai thác hết các khả năng của thiết bị, cung cấp cho các chương trình và người sử dụng tài nguyên phần cứng khi có yêu cầu.

- HĐH là một tập hợp các chương trình hệ thống có chức năng tạo môi trường giao diện cho người sử dụng, tạo môi trường hoạt động cho các trình ứng dụng, quản lý và khai thác hiệu quả các thiết bị phần cứng

2. Phân loại:

- Hệ điều hành theo lô (Batch)

- Hệ điều hành thời gian thực (Real – time)

- Hệ điều hành cơ sở dữ liệu (Data – base)

- Hệ điều hành phân chia thời gian (Time – sharing)

- Hệ điều hành tính toán cá nhân (personal – computing) hay

- hệ điều hành đơn nhiệm

- Hệ điều hành mạng

3. các tính chất của hệ điều hành.

-  Độ tin cậy:  Một hệ điều hành phải thực hiện mọi hoạt động,mọi thông báo đều phải chuẩn xác tuyệt đối. Chỉ khi nào chắc chắn là đúng mới cung cấp thông tin cho người sử dụng

- Tính đồng thời:Một hệ điều hành phải cho phép đồng thời có sự tồn tại của nhiều hoạt động cùng nhau hoặc song song

- Tính phân chia: Một hệ điều hành phải cho phép sự phân chia dung chung các tài nguyên hoặc các thông tin cho các yêu cầu khác nhau

- Các bộ nhớ:Một hệ điều hành phải cần thiết phải có bộ nhớ để lưu trữ các thông tin trong máy tính thay việc lưu trữ bên ngoài

- Tính vạn năng:Một hệ điều hành phải xác định, cùng một chương trình được khai thác hôm nay hoặc ngày mai phải luôn luôn cho cùng một kết quả nếu các dữ liệu là giống nhau. Mặt khác, hệ điều hành phải là vô định theo nghĩa có thể phản ứng lại các sự kiện

- Tính hiệu quả:Khoảng thời gian tối thiểu để chuyển giữa các thao tác. Thời gian đơn vị xử lý trung tâm không được sử dụng. Thời gian xử lý các thao tác theo lô. Thời gian trả lời một yêu cầu (Trong hệ đa truy cập). Mức độ sử dụng tài nguyên. Tốc độ xử lý

- Tính bảo vệ:Hệ điều hành phải được thao tác chuẩn xác và tin cậy, không có lỗi vàb phải có khả năng giả quyết được tất cả các yêu cầu bất thường có thể xảy ra. Hạn chế được tối đa các sai sót ngẫu nhiên hay cố ý

- Tính thuận tiện:Hệ điều hành phải có khả năng cải tiến hoặc sửa các lỗi mà không cần phải dung một số lượng lớn những người lập trình

- Tính kế thừa, thích nghi và kích thước nhỏ: Trong một chừng mực nào đó, các tính chất là mâu thuẫn với nhau. Một hệ điều hành cần phải giải quyết trung hòa, ưu tiên ở tính này hay tính chất khác để đáp ứng được yêu cầu tối đa có thể của người sử dụng.

4. Nguyên tắc xây dựng hệ điều hành

Nguyên tắc module

Nguyên tắc phủ chức năng

Nguyên tắc microprocessor

Nguyên tắc bảng tham số điều khiển

Nguyên tắc giá trị chuẩn

Nguyên tắc chia tham số thành hai loại

Nguyên tắc bảo vệ nhiều mức

Nguyên tắc tương đối trong định vị

Nguyên tắc khởi tạo trong cài đặt

5. cấu trúc của hệ điều hành

5.1 các thành phần của hệ điều hành:

5.1.1 Quản lý tiến trình: 

- Một tiến trình được coi là một đơn vị làm việc của hệ thống

- Vai trò của hệ điề hành trong việc quản lý tiến trình là:

- Tạo và hủy các tiến trình của người sử dụng và củ hệ thống

- Ngừng và thực hiện lại một tiến trình

- Cung cấp cơ chế đồng bộ tiến trình

- Cung cấp cách thông tin giữa các tiến trình
 
- Cung cấp cơ chế kiểm soát

5.1.2 Quản lý bộ nhớ chính

- Bộ nhớ chính là trung tâm của các thao tác, xử lý.

- CPU đọc dữ liệu của bộ nhớ chính

- Các thiết bị ngoại vi cài đặt cơ chế DMA cũng đọc và ghi dữ liệu vào bộ nhớ chính

- Một chương trình muốn thực thi thì phải ánh xạ địa chỉ tuyệt đối và nạp vào bộ nhớ chính

- Để tối ưu hóa hoạt động của CPU và tốc độ máy tính, một số tiến trình được lưu trữ trong bộ nhớ.

- Để quản lý bộ nhớ chính hệ điều hành cần có:
 
  Lưu trữ thông tin về vị trí trong bộ nhớ đã được sử dụng và ai sử dụng

Quyết định tiến trình nào được nạp vào bộ nhớ chính, khi bộ nhớ đã có thể dùng được

Cấp phát và thu hồi bộ nhớ khi cần thiết

5.1.3 Quản lý bộ nhớ phụ: 
- Hầu hết các chương trình: chương trình dịch, hợp ngữ, soạn thảo văn bản đều được lưu trữ trên đĩa cứng

- Các nhiệm vụ:

Quản lý vùng trống trên đĩa

Định vị lưu trữ

Lập lịch cho đĩa

5.1.4 Quản lý hệ thống vào ra:

- Hệ thống buffer caching.

- Giao tiếp điều khiển thiết bị (device drivers) tổng quát. 

- Bộ điều khiển choc ác thiết bị phần cứng

5.1.5 Quản lý hệ thống tệp:

- Một tệp tin là một tập hợp nhưng thông tin do người tạo ra nó xác định. Thông thường một tệp tin đại diện cho một chương trình và dữ liệu

- Vai trò của hệ điều hành trong việc quản lý tệp tin:

Tạo và xóa một tệp tin

Tạo và xóa đi một thư mục

Hỗ trợ các thao tác trên tệp tin và thư mục

Ánh xạ tệp tin lên hệ thống lưu trữ phụ

Backup tên tin trên các thiết bị lưu trữ

5.1.6 Hệ thống bảo vệ:

- Là cơ chế kiểm soát quá trình chỉ được thực thi trong phạm vi địa chỉ của nó. Bộ thời gian đảm bảo rằng không có tiền trình nào đọc quyền chiếm CPU. Cơ chế này cũng cung cấp cách thức để mô tả lại mức độ kiểm soát

5.1.7 Quản lý mạng:

- Mạng là tập hợp các bộ xử lý, chúng không chia sẻ bộ nhớ, các thiết bị ngoại vi hay đồng hồ. Thay vào đó mỗi bộ xử lý có bộ nhớ, đồng hồ và các bộ xử lý giao tiếp với nhau thông qua các đường giao tiếp như bus tốc độ cao hay mạng.

5.1.8 Hệ thống cơ chế dòng lệnh:

- Một trong những phần quan trọng của chương trình hệ thống trong một hệ điều hành là cơ chế dòng lệnh. Đó là giao tiếp giữa người sử dụng và hệ điều hành.

5.2 các dịch vu của hệ điều hành:

- Thực thi chương trình

- Thao tác vào ra

- Thao tác hệ thống tập tin

- Giao tiếp

- Phát hiện lỗi

- Cấp phát tài nguyên

- Tính toán

- Bảo vệ

5.3 lời gọi hệ thống:

- Cung cấp giao diện giữa một quá trình và hệ điều hành

- Có 3 phương pháp thông dụng để truyển tham số tới hệ điều hành.
 Phương pháp truyền tham số trong các thành ghi
 Phương pháp tham số được lưu trữ trong một khối hay bảng trong bộ nhớ và địa chỉ của khối được truyển như một tham số trong thanh ghi
 Phương pháp khối hay ngăn xếp

5.4 các chương trình hệ thống.

Quản lý tệp tin

Thông tin trạng thái

Thay đổi tập tin

Hỗ trợ ngôn ngữ lập trình

Nạp và thực thi chương trình

Giao tiếp

5.5 cấu trúc hệ điều hành

cấu trúc hệ điều hành.

Cấu trúc đơn giản

Cấu trúc theo lớp

Cấu trúc theo máy ảo

Cấu trúc theo mô hình client server

6.Các hệ điều hành được sử dụng trong doanh nghiệp.

6.1 Windows

- Windows là hệ điều hành cực kỳ phổ biến khắp thế giới, được Microsoft ra mắt lần đầu vào năm 1980. Windows được tích hợp sẵn trên hầu hết máy tính. 

- Hệ điều hành này đã trải qua rất nhiều phiên bản cho đến nay. Trong đó, Windows 10 và Windows 7 là hai phiên bản được sử dụng nhiều nhất. Windows 7 tập trung nhiều vào việc tích hợp các tính năng nổi bật kèm giao diện đẹp mắt. Còn Windows 10 được thiết kế tối ưu hóa hơn và chú ý cải thiện tính năng bảo mật. Hiện nay, Microsoft cũng đã giới thiệu đến phiên bản hệ điều hành Windows 11.

- Ưu điểm Windows: ​Dễ sử dụng, tính tương thích, ổn định cao và có đầy đủ tính năng để phục vụ cho nhu cầu công việc hoặc giải trí của người dùng.

- Nhược điểm Windows: Lượng người dùng cao thu hút sự quan tâm của các hacker, tin tặc...Nhiều phần mềm virus, gián điệp hay mã độc...được viết để hoạt động trên hệ điều hành này.

6.2 MAC OS

- MacOS là hệ điều hành được tạo ra bởi thương hiệu quả táo đình đám Apple và được cài đặt sẵn trên tất cả thiết bị máy tính để bàn, Laptop Macbook của Apple. Hệ điều hành MacOS được đánh giá hơn hẳn Windows ở độ mượt mà, ổn định và tốc độ hoạt động. 

- Ưu điểm MacOS: Giao diện đẹp, tính ổn định, bảo mật cao, được cài đặt sẵn miễn phí ở những chiếc máy tính mà Apple bán ra.

- Nhược điểm MacOS: Số người dùng sử dụng macOS còn chưa phổ biến nên có một số phần mềm chưa được phát triển để sử dụng cho hệ điều hành này.

6.3 Linux

- Linux là một hệ điều hành mở. Tức là bạn có thể chỉnh sửa hay làm bất cứ gì trên chúng. Giống như Windows và macOS, Linux cũng tập hợp nhiều phần mềm là máy chủ, có ngôn ngữ lập trình và hệ thống quản trị cơ sở dữ liệu. Hơn nữa, Linux cũng có tính bảo mật cao, giúp người dùng tránh các nguy cơ bị xâm phạm bằng mã độc hay virus.

- Ưu điểm Linux: Miễn phí sử dụng, tính bảo mật cao, khả năng hoạt động mượt, phù hợp với những máy tính có cấu hình yếu.

- Nhược điểm Linux: Rất ít người sử dụng nên ít ứng dụng hỗ trợ trên Linux. Bạn cũng cần mất thời gian để làm quen khi mới bắt đầu sử dụng.

6.4   Android

- Hệ điều hành Android được phát triển bởi công ty Android Inc và được Google mua lại vào năm 2005, Android là hệ điều hành trên thiết bị di dộng có số người được sử dụng đông đảo nhất trên thế giới (chiếm 87,7% thị phần) năm 2017.

- Ưu điểm: Hệ điều hành mở, vì hầu hết cách thiết bị di động điều sử dụng nên Android sở hữu kho ứng dụng khổng lồ, khả năng tùy biến cao, dễ dàng đặt lại thiết bị nếu như quên mật khẩu.

- Nhược điểm: Hiện tại độ bảo mật của Android là khá cao nhưng sẽ không bằng nếu so sánh với iOS.

6.5 IOS

- iOS là hệ điều hành được sử dụng duy nhất trên các thiết bị di động của Apple. Được ra mắt vào năm 2007, iOS đã tạo ra một cuộc cách mạng về công nghệ phần mềm. Được đánh giá khá cao về tính năng cũng như về độ ổn định của nó.

- Ưu điểm: Tính bảo mật cao, khả năng tối ưu phần mềm tốt, hiệu năng ổn định mà không cần đòi hỏi nhiều về cấu hình so với Android.

- Nhược điểm: Hệ điều hành chỉ độc quyền cho các dòng điện thoại của Apple và không thể sử dụng trên các điện thoại khác, kho ứng dụng ít hơn so với Android.

