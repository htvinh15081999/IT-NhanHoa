1. **Cơ bản về GIT**

**Khái niệm chung:**

Repo: chứa dữ liệu của dự án code,… gồm repo localhos và remote trên các máy server server.

Commit: thay đổi, thêm sửa, xóa file, code thì mỗi lần nvay là 1 conmit.

Branch: nhánh trong git, tách thành các nhánh để code dễ hơn ( mỗi chức năng là 1 nhánh).

**Các thiết lập cơ bản cho git: ( sử dụng Git Bash)**

Xem các cấu hình cơ bản của git:

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.001.png)

Thiết lập user name/ user email.

` `![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.002.png)

Các trạng thái cơ bản của git:

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.003.png)

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.004.png)

**Các lệnh cơ bản trong GIT:**

git init: khởi tạo file trở thành 1 repo

git add <ten file> or git add  .  : đưa 1 or tất cả các file  vào vùng staing

git commit –m”<tên version>” : lưu các file vào Repo

git log –oneline: lsu commit tóm tắt

git log: lsu comit day du

git diff: kiểm tra sự thay đổi của file 

git diff –staged : kiểm tra sự khác nhau giữa dl ở stage và repo

git checkout <ma version> --<tên file> : 	phục hồi các file của commit nào đó.

git status: kiểm tra trạng thái giữa các vùng làm việc.

git restore <têm file> or git restore .   hủy các file trong staged đưa về trạng thái modified.

git reset –soft HEAD~1 : xóa commit cuối cùng nhưng những dữ liệu thay đổi sẽ được đưa vào staged để có thể chỉnh sửa và commit.

Git reset –hard HEAD~1: xóa commit cuối cùng k phục hồi lại đc

**Thao tác cơ bản với GIT:**

Trỏ đến thư mục cần lviec

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.005.png)

Khởi tạo và biên tập file( .html)

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.006.png)

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.007.png)

Khởi tạo repo:

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.008.png)

Lưu chỉnh sửa vào repo

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.009.png)

Kiểm tra commit trạng thái giữa dữ liệu của repo và dlieu đang làm việc

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.010.png)

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.011.png)

**Vòng đời các file trong git:**

Các trạng thái của file:

Untracked: không đươc theo dõi bởi git 

Unmodified: không có thay đổi gì

Modified: có thay đổi

Staged: trạng thái đánh dấu chuẩn bị được lưu vào database Git.

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.012.png)

**Giải thích:**

Khởi tạo file mới đưa vào trạng thái  taged để git theo dõi. ( file đưa vào có thể là 1 file mới hoặc file ở chế độ modified)

Comit các file ở trạng thái staged trở thành trạng thái unmodified. 

Sau khi chỉnh làm việc các file sẽ ở trạng thái modified tiếp tục đưa vào staged vào comit để Unmodified.

**Nhánh, tạo và quản lý nhánh, gộp nhánh với git merge.**

git branch : Kiểm tra các nhánh có trên project.

Git branch <tên nhánh >: tạo 1 nhánh mới.

Git checkout <tên nhánh>: chuyển nhánh làm việc

Git merge <tên nhánh cần gộp>:  gộp nhánh 

Git branch –d <tên nhánh cần xóa>: xóa nhánh

**Sử dụng github cơ bản:**

Thiết lập khóa SSH Key.

Tạo thư mục lưu gitkey

Thực hiện lệnh để tạo SSH Key.

**ssh -keygen –t rsa –f id\_rsa**

mở file id\_rsa.pub để lấy SSH key public

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.013.png)

Coopy key này vào điển vào 

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.014.png)

Cấu hình ssh key private

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.015.png)

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.016.png)

Tạo remote trên github:lựa chọn các mục cho phù hợp với mục đích sử dụng

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.017.png)

Add remote vừa tạo trên gibhub vào project.

Git remote add <tên remote> <đchi ssh tên github>

Git remote add origin <git@github.com:htvinh15081999/Intern.git>

Kiểm tra các remote đã add

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.018.png)

Đẩy giữ liệu lên github

Cú pháp lệnh: git push <tên remote> <tên nhánh>

` `![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.019.png)

Kết quả sau khi push:

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.020.png)

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.021.png)

Lấy project từ github về máy: git clone <URL SSH>

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.022.png)

Ban đầu chỉ hiển thị nhánh master trong khi trên github lại có cả master và beta. 

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.023.png)

Cập nhật code từ github về máy local bằng lệnh git pull

Tag trong git để dấu dấu có điểm trong quá trình commit. 

Cú pháp: git tag –a “<tên tag>” –m”<thông điêp của tag>” <id của commit>

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.024.png)

Kiểm tra các tag:

Xem thông tin chi tiết của tag: git show <tên tag>

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.025.png)

Xóa tag : git tag –d <tên tag cần xóa>.

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.026.png)

Push tag lên remote

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.027.png)

Xóa tag trên remote: git push –delete <tên remote> <tên tag>

![](Aspose.Words.d09d400e-eeb0-42fa-8885-832fbee6e983.028.png)



