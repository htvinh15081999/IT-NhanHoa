1. **Cơ bản về GIT**

**Khái niệm chung:**

Repo: chứa dữ liệu của dự án code,… gồm repo localhos và remote trên các máy server server.

Commit: thay đổi, thêm sửa, xóa file, code thì mỗi lần nvay là 1 conmit.

Branch: nhánh trong git, tách thành các nhánh để code dễ hơn ( mỗi chức năng là 1 nhánh).

**Các thiết lập cơ bản cho git: ( sử dụng Git Bash)**

Xem các cấu hình cơ bản của git:

![image](https://user-images.githubusercontent.com/95491130/180400486-e933b4f9-5160-4438-a2e1-dd0d43c03bf1.png)

Thiết lập user name/ user email.

![image](https://user-images.githubusercontent.com/95491130/180400513-a8393af4-593b-4c0b-b56b-35592d6404d7.png)

Các trạng thái cơ bản của git:

![image](https://user-images.githubusercontent.com/95491130/180400535-d497651e-d845-42b0-b01f-0c6041113810.png)

![image](https://user-images.githubusercontent.com/95491130/180400558-f72949a4-cffd-4317-9519-c97add6b8cf6.png)

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

![image](https://user-images.githubusercontent.com/95491130/180400592-bd13f3c7-3fa6-4494-8e56-076d34da28dd.png)

Khởi tạo và biên tập file( .html)

![image](https://user-images.githubusercontent.com/95491130/180400608-228769e8-a68b-4e00-a351-118530dd1ea4.png)

![image](https://user-images.githubusercontent.com/95491130/180400628-3cbe975a-8647-43d6-99a0-e8e37003363e.png)

Khởi tạo repo:

![image](https://user-images.githubusercontent.com/95491130/180400650-c55a937f-b85a-492b-8130-160b4cdce474.png)

Lưu chỉnh sửa vào repo

![image](https://user-images.githubusercontent.com/95491130/180400674-b9b3b6e2-1e63-4ca1-9004-5a804a8808fe.png)

Kiểm tra commit trạng thái giữa dữ liệu của repo và dlieu đang làm việc

![image](https://user-images.githubusercontent.com/95491130/180400694-ab53c330-7670-44a0-9130-1289a614931f.png)

![image](https://user-images.githubusercontent.com/95491130/180400711-10fabc97-e54f-4981-8a55-f3aa76bbe06a.png)

**Vòng đời các file trong git:**

Các trạng thái của file:

Untracked: không đươc theo dõi bởi git 

Unmodified: không có thay đổi gì

Modified: có thay đổi

Staged: trạng thái đánh dấu chuẩn bị được lưu vào database Git.

![image](https://user-images.githubusercontent.com/95491130/180400728-17be09b6-befd-45a1-9644-b2302880ed4a.png)

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

![image](https://user-images.githubusercontent.com/95491130/180400789-834386a6-5284-4cb3-a375-20c50a827f88.png)

Coopy key này vào điển vào 

![image](https://user-images.githubusercontent.com/95491130/180400804-b5f23493-a20e-4d11-9146-32b2da352099.png)

Cấu hình ssh key private

![image](https://user-images.githubusercontent.com/95491130/180400831-bfff1a7e-9eea-4d73-8b05-d180912a664f.png)

![image](https://user-images.githubusercontent.com/95491130/180400851-cb9ea32e-026b-4372-870c-eec630b3debe.png)

Tạo remote trên github:lựa chọn các mục cho phù hợp với mục đích sử dụng

![image](https://user-images.githubusercontent.com/95491130/180400931-856df1fe-9da6-4b5e-8c32-1e6ef40007d4.png)

Add remote vừa tạo trên gibhub vào project.

Git remote add <tên remote> <đchi ssh tên github>

Git remote add origin <git@github.com:htvinh15081999/Intern.git>

Kiểm tra các remote đã add

![image](https://user-images.githubusercontent.com/95491130/180400952-8687b558-25fb-4ecf-b1c6-2d3371028ead.png)

Đẩy giữ liệu lên github

Cú pháp lệnh: git push <tên remote> <tên nhánh>

![image](https://user-images.githubusercontent.com/95491130/180400965-e910f302-1a5a-4d60-89a4-546390bdd430.png)

Kết quả sau khi push:

![image](https://user-images.githubusercontent.com/95491130/180400980-85e15cd2-b6a2-41ee-8d0c-ae0a23c57d4f.png)

![image](https://user-images.githubusercontent.com/95491130/180400989-4b12af1b-4031-40c8-b584-4f8b22e558cd.png)

Lấy project từ github về máy: git clone <URL SSH>

![image](https://user-images.githubusercontent.com/95491130/180401012-ad9c9faa-a35b-4c0f-8850-72f7bf21d0be.png)

Ban đầu chỉ hiển thị nhánh master trong khi trên github lại có cả master và beta. 

![image](https://user-images.githubusercontent.com/95491130/180401028-a81538a0-2e61-4023-bb3a-94fcfebf95f0.png)

Cập nhật code từ github về máy local bằng lệnh git pull

Tag trong git để dấu dấu có điểm trong quá trình commit. 

Cú pháp: git tag –a “<tên tag>” –m”<thông điêp của tag>” <id của commit>

![image](https://user-images.githubusercontent.com/95491130/180401054-0992bde7-a177-43db-b3f7-8577d6b4f81a.png)

Kiểm tra các tag:

Xem thông tin chi tiết của tag: git show <tên tag>

![image](https://user-images.githubusercontent.com/95491130/180401139-bd782d9d-43ed-4788-ba4a-d95123504c64.png)

Xóa tag : git tag –d <tên tag cần xóa>.

![image](https://user-images.githubusercontent.com/95491130/180401124-552c7a4d-8584-44a4-8fb5-170818cb55d9.png)

Push tag lên remote

![image](https://user-images.githubusercontent.com/95491130/180401161-953f3b87-0461-41bc-986f-1a5c40d669f9.png)

Xóa tag trên remote: git push –delete <tên remote> <tên tag>

![image](https://user-images.githubusercontent.com/95491130/180401180-109c3cea-854d-48a7-a699-c9b8dcaf3b15.png)



