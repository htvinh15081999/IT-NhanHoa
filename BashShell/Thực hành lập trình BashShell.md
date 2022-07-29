1. in ra màn hình

- lap1: sử dụng chú thích #

#vi comment.sh

![image](https://user-images.githubusercontent.com/95491130/181714743-81e269f2-c1b8-41ea-9fa4-b9bac96f69dd.png)

#bash comment.sh

![image](https://user-images.githubusercontent.com/95491130/181683485-d7f9dd7a-cdac-43a7-a672-195c61a07f40.png)

- lap2: sử dụng chú thích nhiều dòng bằng ":" và "'"

#vi comments.sh

![image](https://user-images.githubusercontent.com/95491130/181714830-5555526d-de52-483f-aba5-afef8d91275c.png)

#bash comments.sh

![image](https://user-images.githubusercontent.com/95491130/181683846-70d161f4-7f42-4cc7-a68a-315bc28b63f0.png)

-lap3: bash sử dụng mkdir

#vi lap3.sh

![image](https://user-images.githubusercontent.com/95491130/181684003-ccfbdd01-4231-41c9-bb69-3bd1daf4adac.png)

#bash lap3.sh

![image](https://user-images.githubusercontent.com/95491130/181684200-7fadb142-a03b-42a3-8598-57807d76dcbb.png)

![image](https://user-images.githubusercontent.com/95491130/181684229-b2b2c1bb-5de1-4d16-ae34-ec9e9d7e4115.png)

2. cấu trúc điều kiện.

- lap1:Tạo file có tên if.sh. Chúng ta gán biến n bằng 20 và thực hiện điều kiện so sánh nếu $n bé hơn 10 in kết quả ra màn hình số có một chữ số và ngược lại in ra màn hình số có hai chữ số:

#vi if.sh

![image](https://user-images.githubusercontent.com/95491130/181699790-789f9420-2aa7-46ed-bb47-2be5f4480788.png)

#bash if.sh

![image](https://user-images.githubusercontent.com/95491130/181712074-9e8dbefb-a72a-4111-8522-7243f1a9a862.png)

- lap2: sử dụng cấu trúc if với toán tử logic AND

- Chúng ta có thể xác định nhiều điều kiện trong câu lệnh if bằng logic AND (&&). Tạo một tệp có tên if_and.sh giá trị của các biến tên người dùng và mật khẩu sẽ được nhập vào và so sánh với username va password trong if. Nếu cả hai giá trị khớp nhau thì đầu ra sẽ là người dùng hợp lệ , nếu không, đầu ra sẽ là người dùng không hợp lệ .

#vi if_and.sh

![image](https://user-images.githubusercontent.com/95491130/181712666-873d391d-c0ac-447b-a524-4b235622b85c.png)

#bash if_and.sh

![image](https://user-images.githubusercontent.com/95491130/181712973-c6774c40-003d-4e60-9f66-0695b16b4b86.png)

- lap3: sủ dung if với toán tử logic Or. Tạo một file có tên if_or.sh và giá trị của n sẽ được nhập từ người dùng. Nếu giá trị bằng 150 hoặc 400 thì đầu ra sẽ là bạn đã nhập đúng, ngược lại thì trả về kết quả bạn nhập sai.

![image](https://user-images.githubusercontent.com/95491130/181713649-41659c2c-d274-4098-a51a-5a9692a375d7.png)

![image](https://user-images.githubusercontent.com/95491130/181713591-c36961be-4f21-496d-ad43-70004dd9b1d5.png)

- test bash shell.

![image](https://user-images.githubusercontent.com/95491130/181714169-1d25187f-2535-442d-9b50-78be788d9360.png)

- lap4: tạo file bằng lệnh mkdir kết hợp với cấu trúc if

#vi if_mkdir.sh;

![image](https://user-images.githubusercontent.com/95491130/181715704-f8d83611-d5a7-44aa-a43c-e6359ee26857.png)

- test 

![image](https://user-images.githubusercontent.com/95491130/181715616-a7c147b0-fbd2-47e4-914c-6538542f2d9d.png)

3. vòng lặp trong bash shell

- lap1: sử dụng vòng lặp for: Tạo một tệp có tên for.sh và thêm tập lệnh sau bằng vòng lặp for. Ở đây, vòng lặp for sẽ lặp lại trong 5 lần và in tất cả các giá trị của biến, bộ đếm trong một dòng.

#vi for.sh

![image](https://user-images.githubusercontent.com/95491130/181716563-4b0fbf77-6ce3-43de-b796-58b548ce0a0f.png)

chạy tệp với lệnh bash

![image](https://user-images.githubusercontent.com/95491130/181716682-2300cad8-01e4-461d-8a12-aa85bc1398f8.png)

- lap2: sử dụng vòng lặp while: Tạo một tệp có tên while.sh và thêm tập lệnh sau bằng vòng lặp while. Ở đây, vòng lặp while sẽ in tất cả chẵn từ 0 đến 10

#vi while.sh

![image](https://user-images.githubusercontent.com/95491130/181718651-c24b6234-180d-4d83-bf3e-5140b7cbc37a.png)

chạy lệnh bash

![image](https://user-images.githubusercontent.com/95491130/181718710-f40794a3-b6b5-45fe-b3ca-6638009ba19e.png)

- lap3: sử dụng vòng lặp until.sh: Tạo một tệp có tên until.sh và thêm tập lệnh sau bằng vòng lặp until. Ở đây, vòng lặp until sẽ in tất cả các số lẻ từ 1 đến 15.

#vi until.sh

![image](https://user-images.githubusercontent.com/95491130/181718966-49e50649-bfd0-44c4-9eee-ec04b3acb0c0.png)

chạy lệnh bash;

![image](https://user-images.githubusercontent.com/95491130/181719078-599eee2c-bc5e-46dd-8e33-384810a7790f.png)

4. cấu trúc cấu case.

#vi case.sh

![image](https://user-images.githubusercontent.com/95491130/181721562-2907f4f9-64a4-451d-b079-3298c228e5ca.png)

chạy lệnh bash.

![image](https://user-images.githubusercontent.com/95491130/181721671-0087574f-e208-4b5f-b80d-2b8bd5d6b131.png)

5. cấu trúc select: lựa chọn sở thích

#vi select.sh

![image](https://user-images.githubusercontent.com/95491130/181723063-e39378a2-a303-47cc-a614-9263c1cad5f8.png)

chạy lệnh bash.

![image](https://user-images.githubusercontent.com/95491130/181723196-37f9587e-b0b2-4f0a-90dd-b905b93afa93.png)

6. thao tác với chuỗi: 

#vi string.sh

![image](https://user-images.githubusercontent.com/95491130/181723891-6dd24a86-c8e8-41b9-87d7-e59def14e308.png)

chạy lenh bash

![image](https://user-images.githubusercontent.com/95491130/181724000-558a1909-18a3-417e-81ca-9d2c0d517fdc.png)

7. mảng

- Mảng là một danh sách các mục, được khai báo bên trong dấu ngoặc đơn như sau:

a=("di bien" "an uong" "di nui" "xem phim" "the thao")

- Bạn có thể tham chiếu bất kỳ mục nào trong một mảng bằng dấu ngoặc vuông:

a[0]
a[1]

-  Bạn có thể nhận được tổng số mục trong một mảng bằng cú pháp này:

${#a[@]}

8. sử dụng hàm

- lap1: Bash không thể khai báo tham số tại thời điểm khai báo hàm. Nhưng chúng ta có thể sử dụng các tham số trong hàm bằng cách sử dụng biến khác. Tạo một tập tin có tên function.sh và thêm đoạn mã sau tính diện tích hình chữ nhật:

#vi function.sh

![image](https://user-images.githubusercontent.com/95491130/181726055-def1d6ce-c117-458b-8888-1aa112a3bcb7.png)

chạy lệnh bash

![image](https://user-images.githubusercontent.com/95491130/181726233-28b8a1ff-7846-4503-8a9f-1cf30eb12d7b.png)








