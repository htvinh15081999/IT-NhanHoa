tìm hiểu về định tuyến.

mục lục






----------------------------------
1. khái niệm về định tuyến:

- định tuyến là chức năng của router giúp xác định đường đi cho các gói tin từ nguồn tới đích thông qua hệ thống mạng

![image](https://user-images.githubusercontent.com/95491130/180599760-3c73726f-c273-4d54-9150-8745dce21cda.png)

- router dựa vào địa chỉ IP trong các gói tin và sử dụng bảng định tuyến để xác định hướng đi cho chúng.

![image](https://user-images.githubusercontent.com/95491130/180599804-6e7d8323-7b03-42e3-8621-438e8eb9c544.png)

trong bảng định tuyến mỗi mạng mà router có thể chuyển đi ( mạng đích) thể hiện bằng 1 dòng. Mỗi mạng này có được có thể do chúng đang kết nối trực tiếp với router đang xét hay router học được thông qua việc cấu hình.

2. phân loại định tuyến:

- định tuyến tĩnh: là loại định tuyến mà trong đó router sử dụng các tuyến đường đi tĩnh để vận chuyển dữ liệu đi. các tuyến đường đi tĩnh này có đc do người quản trị cấu hình thủ công vào các router.

- định tuyến động:router sử dụng các tuyến đường đi động để vận chuyển dữ liệu. Các tuyến đi động này có đc do các router sử dụng các giao thức định tuyến động trao đổi thông tin định tuyến với nhau tạo ra.

1 số giao thức định tuyến động phổ biến như: RIP,OSPF, BGP,....

3. định tuyến tĩnh: 

- trong cấu hình định tuyến tĩnh người quản trị phải cấu hình thủ công chỉ ra đường đi đến tất cả các mạng đích trên router trong hệ thống. Định tuyến tĩnh không có hoạt động gửi thông tin cập nhật như các giao thức định tuyến động.

- lưu ý: mặc định router sẽ biết đc đường đi đến mạng đích đang kết nối trực tiếp với nó.

để cấu hình định tuyến tĩnh, chúng ta sử dụng cú pháp sau:

![image](https://user-images.githubusercontent.com/95491130/180600098-f9e4da8b-13bc-4e6b-9db7-a8f875bec7c7.png)

- trong đó:

destination network: là địa chỉ mạng đích cần tới

subnetmark: subnetmark của destination network

nexthopaddress: địa chỉ IP của cổng trên router kế tiếp
