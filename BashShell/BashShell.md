Mục lục:
-----------------------------------------------------------------------
1. khái niêm về shell script.
2. tiện ích của shell script
3. các khái niệm cơ bản khi viết bash Shell.
4. sử dụng bash shell cơ bản:
5. cấu trúc vòng lặp trong bash shell:
6. cấu trúc case trong bashshell:
7. cú pháp lựa chọn trong bashshell.
8. làm việc với các chuỗi
9. sử dụng mảng.
10. sử dụng hàm
-------------------------------------------------------------------------


1. khái niêm về shell script.

- Shell script dùng để thực thi lênh shell chạy nhiều lệnh cùng nhau, tùy chỉnh các tác vụ quản lý, thực thi tự động hóa. 
thực
- shell script cho phép lập trình các lệnh thành chuỗi và hệ thống sẽ thực thi chúng. ( vòng lặp forr, if/else/,  )

- shell script là 1 tệp tin văn bản đơn giản. có thế sử dụng trình soạn thảo văn bản như: vim, nano, gedit,....

-------------------------------------------------------------------------

2. tiện ích của shell script

- iput: người dùng, tệp, kết quả từ màn hình.

- tạo nhóm lệnh riêng

- tiết kiệm thời gian

- thực thi 1 số công việc tự động.

-------------------------------------------------------------------------

3. các khái niệm cơ bản khi viết bash Shell.

- các tập lệnh được lưu trữ dưới dạng các tệp tin có thể đặt tên tùy ý cho nó. bassh shell luôn phải bắt đầu với shebang ngay dòng đầu tiên:

#! /bin/bash

- sau đó phải phân quyền cho tập tin 

#chmod u+x [tên tập tin]

- Bạn có thể thực thi tập lệnh nếu bạn đang ở trong cùng một thư mục bằng cách gọi nó ./myscript hoặc sử dụng đường dẫn đầy đủ đến nó.

- Ngoài cách thực thi trên chúng ta có thể sử dụng lệnh bash để thực thi cú pháp như sau:

#bash [đường dẫn đến file]

- chú thích trong bash shell:

chú thích đc bắt đầu bởi ký tự "#".  (ngoại trừ dòng shebang ở trên).

- biến và toán tử trong bash shell:

Chúng ta có thể đặt biến bằng cách sử dụng toán tử = cú pháp như sau:

#name=value

vdu:

          NUMBER=1999

          name=blogd.net
          
- in biến đã tạo bằng lệnh echo và ký tư $

echo $NUMBER

echo $name

- các toán tử số học trên bash shell:

![image](https://user-images.githubusercontent.com/95491130/181674634-5de6ab7e-1b47-4bef-aea3-48b2e84a2924.png)

- so sánh giá trị qua bảng sau:

![image](https://user-images.githubusercontent.com/95491130/181674713-fc28c0a6-3e90-44cb-8162-637846d0ae25.png)

- toán tử  logic

&& logic và

|| logic hoặc

- biến đặc biệt: ký tự $ đại diện cho ID tiến trình, hoặc PID.

- bảng sau thống kê các biến đặc biệt:

![image](https://user-images.githubusercontent.com/95491130/181674948-18b8dc6b-10ae-4e3d-bd2d-699f841f42d5.png)

-------------------------------------------------------------------------

4. sử dụng bash shell cơ bản:

4.1 in ra màn hình.

![image](https://user-images.githubusercontent.com/95491130/181675223-e43bcef6-feff-4e0c-b906-3f8d635ac052.png)

- khi cần thực hiện in ra màn hình nhiều đầu ra thì chúng ta cần tạo ra 1 bash shell in ra màn hình, khi cần thì chạy bash shell đó tiết kiệm thời gian.

- quy trình tạo 1 bash shell.

B1: tạo tập tin chứa tập các lệnh 

#vi basic.sh

- nhập các câu lệnh đơn giản vào

![image](https://user-images.githubusercontent.com/95491130/181676150-3742dfa8-22cb-49e8-9f69-e80d5e79aec2.png)

B2: Thực thi tập tin bash:

- chạy tập tin bằng lênh pash

![image](https://user-images.githubusercontent.com/95491130/181676304-8f074c83-a394-4c79-9321-1e3efaa83760.png)

- Chạy tập tin bash bằng cách thiết lập quyền thực thi đối với tập tin bash và chạy tập tin

![image](https://user-images.githubusercontent.com/95491130/181676419-90e26890-fad7-4125-bceb-d1ddfb00326e.png)

4.2 cấu trúc điều kiện trong bash shell:

- chúng ta có thể sử dụng cấu trúc 1 hay nhiều điều kiện. 

- cấu trúc điều kiện bắt đầu bằng if và kết thúc bằng fi.

- câu lệnh if đơn giản:

if condition
then
    command
fi

- câu lệnh if else:

if condition
then
  command
else
  anothercommand
fi

- Lồng if và theo sau đó là else:

if condition
then
  command
elif
  anothercommand
else
  yetanothercommand
fi

-------------------------------------------------------------------------

5. cấu trúc vòng lặp trong bash shell:

- vòng lặp while

while condition
do
  command
done

- vòng lặp until:

until condition
do
  command
done

- Vòng lặp for: Lặp lại một danh sách và thực hiện một lệnh cho mỗi lần lặp

for item in list
do
  command
done

- Trong các vòng lặp, chúng ta có thể sử dụng các câu lệnh break hay continue để phá vỡ vòng lặp hoặc chỉ cần bỏ qua bước lặp hiện tại.

-------------------------------------------------------------------------

6. cấu trúc case trong bashshell:

- cấu trúc case bắt đầu bằng case và kết thúc bằng esac cho phép chọn các lựa chọn khác nhau tùy theo giá trị của điều kiện.

case value in
  a)
    command
    #...
    ;;
  b)
    command
    #...
    ;;
esac

- Chúng ta cần thêm một dấu chấm phẩy kép (;;) sau mỗi trường hợp.

-------------------------------------------------------------------------

7. cú pháp lựa chọn trong bashshell.

- cấu trúc select sẽ hiển thị cho người dùng 1 menu các lựa chọn để người dùng chọn:

select item in list
do
  command
done

-------------------------------------------------------------------------

8. làm việc với các chuỗi

chuỗi : strings="khanhhuyen"

#${#strings}: lấy chiều dài chuỗi.Luôn sử dụng dấu ngoặc kép quanh các chuỗi, khi chúng ta làm việc với nó để tránh bash diễn giải các ký tự đặc biệt bên trong chúng.

- Ngoài ra bạn có thể so sánh 2 chuỗi bằng cách sử dụng toán tử = hoặc ==:

"$strings" = "$anotherstrings" "$strings" == "$anotherstrings"

- Bạn cũng có thể kiểm tra sự khác nhau giữa hai chuỗi:

"$strings" != "$anotherstrings"

-------------------------------------------------------------------------

9. sử dụng mảng.

- Mảng là một danh sách các mục, được khai báo bên trong dấu ngoặc đơn như sau:

a=("di bien" "an uong" "di nui" "xem phim" "the thao")

- Bạn có thể tham chiếu bất kỳ mục nào trong một mảng bằng dấu ngoặc vuông:

a[0]
a[1]

- Bạn có thể nhận được tổng số mục trong một mảng bằng cú pháp này:

${#a[@]}

-------------------------------------------------------------------------

10. sử dụng hàm

- Cú pháp của một hàm như sau:

function name {

}

- Trong đó name là tên chúng ta cần đặt cho hàm, và là tên để chúng ta gọi khi cần thiết.


























 












