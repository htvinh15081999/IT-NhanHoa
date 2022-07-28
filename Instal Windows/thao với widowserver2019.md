Mục lục

1. gán địa chỉ IP tĩnh
2. thêm người dùng cục bộ.
3. đặt quyền admin cho người dung:
4. Thay đổi username admin
5. Thay đổi tên máy tính
-----------------------------------------------------------------------
1. gán địa chỉ IP tĩnh

b1: Chạy Server Manager và chọn Local Server trên bảng điều khiển bên trái, rồi nhấp vào phần Ethernet trên bảng điều khiển bên phải

![image](https://user-images.githubusercontent.com/95491130/181421527-5dd0d348-0d4e-419c-bdb1-5abea9d9a262.png)

b2: Nhấp chuột phải vào biểu tượng Ethernet và mở Properties cấu hình địa chỉ ipv4

![image](https://user-images.githubusercontent.com/95491130/181421967-8b8c4094-cc3e-42e8-9973-0b9f58b77571.png)

- Sau khi đặt địa chỉ IP tĩnh, các thay đổi sẽ được kích hoạt trên Server Manager

![image](https://user-images.githubusercontent.com/95491130/181422370-7101d549-2cde-440d-9012-3499fa8f1cd4.png)

2. thêm người dùng cục bộ.

Bước 1: Chạy Server Manager và mở Tools -> Computer Management

![image](https://user-images.githubusercontent.com/95491130/181422546-45a959f1-8fdf-472e-ade0-1f3fafa85edf.png)

bước 2: Bước 2: Nhấp chuột vào Users bên dưới Local Users and Groups ở bên trái và chọn New Users

![image](https://user-images.githubusercontent.com/95491130/181422742-8068a08c-2bbb-4b6b-9ba6-36f3f147615b.png)

Bước 3: Nhập Username và Password cho người dùng mới, rồi nhấp vào nút Create. Các mục khác là tùy chọn để thiết lập

![image](https://user-images.githubusercontent.com/95491130/181422955-fbf33d38-3c44-46d5-81d2-8d61c8176c49.png)

- Sau khi tạo người dùng mới được hiển thị trên danh sách như sau

![image](https://user-images.githubusercontent.com/95491130/181423035-0de51b2d-7f40-4854-bde9-b1c51d0377aa.png)

3. đặt quyền admin cho người dung:

B1: Nếu muốn đặt quyền admin cho người dùng mới, ta nhấp chuột phải vào người dùng và chọn Properties

- Di chuyển đến Member of và nhấp vào nút Add. Chỉ định nhóm Administrator như sau

![image](https://user-images.githubusercontent.com/95491130/181423585-9cd784eb-e137-4992-bcdd-fb4f41b410e6.png)

Đảm bảo rằng nhóm Administrators được thêm vào danh sách và nhấp vào nút OK để hoàn tất cài đặt

![image](https://user-images.githubusercontent.com/95491130/181423659-65b55731-d738-4c22-9b5c-53d8fe75e005.png)

4. Thay đổi username admin

Bước 1: Chạy Server Manager và mở Tools -> Computer Management

Bước 2: Mở Local Users and Group -> Users ở bên trái và nhấp chuột phải vào Administrator, rồi chọn Rename ở bên phải. Sau đó thay đổi bất kỳ tên nào mà ta muốn

![image](https://user-images.githubusercontent.com/95491130/181437245-e99596ff-7529-477e-bb16-f64a2ba9c96e.png)

5. Thay đổi tên máy tính

- Tên máy tính được gán tự động theo mặc định, ta cần thay đổi nó

- Chạy Server Manager và chọn Local Server ở bên trái, rồi kích vào phần Computer Name ở bên phải

![image](https://user-images.githubusercontent.com/95491130/181437504-9b244e8f-c08c-4e77-9c2f-aff0de77b537.png)

- Tại tab Computer Name click vào nút Change và nhập tên mà ta muốn thay đổi vào trường Computer Name

![image](https://user-images.githubusercontent.com/95491130/181437698-ece0024e-2300-487a-8b3f-209a2d7cfc07.png)

- khởi động lại máy để cập nhật thay đổi.

![image](https://user-images.githubusercontent.com/95491130/181437971-79cee3d2-c4f8-41b8-bf7e-3cdf6630aadc.png)



