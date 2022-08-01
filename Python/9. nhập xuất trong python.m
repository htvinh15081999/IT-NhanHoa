1. hàm xuất - print : Hàm print giúp xuất các nội dung mà người dùng muốn ra shell ( terminal , command prompt , powershell , ...)

          cú pháp :

          print(*object, sep='', end='\n', file=sys.stdout, flush=False)

- Trong đó :

*object : * chính là packing argument . Nó sẽ gom các argument lại thành một tuple
          
          >>> packing = 1, 2, 3, 4
          >>> packing
          (1, 2, 3, 4)
          >>> print('Hello', 'World!')
          Hello World!

- sep - separate : giá trị mặc định của sep là một khoảng trắng ( space ) . Khi các argument ném vào hàm print để hàm print in ra nội dung , nó sẽ được gói vào 1 Tuple . Các giá trị trong tuple sẽ được nối với nhau bằng sep .

        >>> print('around', 'the', 'world')       # sep mặc định là space
        around the world
        >>> print('around', 'the', 'world', sep='---')
        around---the---world
        >>> print('around', 'the', 'world', sep='\n')
        
2. Hàm input - hàm nhập :

          Cú pháp :

          input(prompt=None)

- Công dụng : hàm này giúp ta đọc một chuỗi từ standard input , sau đó trả về cho chúng ta . Và thứ mà nó đọc vào luôn là một chuỗi cho dù có nhập tuple , list , dict ,... Việc nhập sẽ kết thúc khi gõ phím Enter ( đồng nghĩa gửi vào một ký tự \n tuy nhiên trong thực tế nó sẽ bị bỏ đi )

VD1 :

        >>> input('string')
        string

