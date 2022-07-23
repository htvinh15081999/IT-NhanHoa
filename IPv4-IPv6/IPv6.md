Địa chỉ IPv6
------------------------------
Mục lục:







-----------------------------------------
1. cấu trúc: 

- được phân cấp theo prefix.

- được trình bày dưới dạng thập lục phân. chiều dài IPV6 là 128bit chia thành 8 nhóm, mỗi nhóm gồm 2 byte cách nhau bởi dấu ":".

                    X:X:X:X:X:X:X:X

X: 2 byte dạng thập lục phân

vd: 2031:3051:130F:E0F1:90CD:9C0A:876A:130B

đới với nhóm có giá trị 0 ở đầu thì có thể lược bỏ.

đối với nhóm có giá trị 0 liên tiếp thì có thể viết gọn lại:

2031:2517:0000:0000:0000:1C0A:876A:130B -> 2031:2517::1C0A:876A:130B

- header của IPv6:

header được thiết kế đơn giản giảm chi phí đến mức tối thiểu. Điều này đạt được bằng cách chuyển các trường không quan trọng và các trường lựa chọn sang các header mở rộng dudcc đặt phía sau của ipv6 header. khuôn dạng mới của ipv6 tao ra sự xử lý hiệu quả hơn tại các router.

![image](https://user-images.githubusercontent.com/95491130/180596371-4531c7f0-f2b4-491a-9ada-aba183cc99ff.png)


2. phân loại IPV6

- gồm 3 loại chính: Unicast, Multicast và Anycast

2.1 Địa chỉ Unicast

- địa chỉ unicast là địa chỉ định danh cho 1 thiết bị. 1 gói tin được gửi đến địa chỉ unicast là dc chuyển đến interface định danh bởi địa chỉ đó. địa chỉ unicast gôm 2 loại:

Link local: cho phép kết nối thiệt bị nội bộ vói nhau, địa chỉ này không có khả năng định tuyến và chỉ sử dụng trong cùng 1 lớp mạng. địa chỉ link local có prefix dạng như sau: FE80::/10

![image](https://user-images.githubusercontent.com/95491130/180596496-c70bfc02-c13a-4795-8931-0c1e237e7991.png)

global local: địa chỉ tương tự địa chỉ public của Ipv4 nghĩa là địa chỉ này được định tuyến sử dụng trên internet.

![image](https://user-images.githubusercontent.com/95491130/180596530-1dbd6969-9310-4d43-bbff-d8d4d8f99dba.png)

registry: định danh các vùng

ISP prefix: định danh các nhà cung cấp dich vụ.

Site Prefix: định danh các doanh nghiệp tổ chức.

subnet prefix: định danh mạng nhỏ hơn trong doanh nghiệp tổ chức.

3bit đàu tiên đc gán giá trị 001. do đó địa chỉ global unicast thường dạng 2001::/3

2.2 địa chỉ multicast

![image](https://user-images.githubusercontent.com/95491130/180596610-22afd14c-28df-4174-ad75-952b27fbbe8d.png)

định danh nhiều host/interface. một gói tin khi gửi đến địa chỉ này có nghĩa là nó sẽ được gửi đén host/interface tương ứng. địa chỉ multicast thường có prefix là FF00::/8

cấu trúc của địa chỉ multicast:

8 bit đâu là 1111111: định dang của địa chỉ multicast

4 bit tiep theo là flags: 3 bit đầu thường k được sử dung, bit cuối. bit thứ 4: 0 là giá trị đc gán bởi IANA và là địa chỉ tạm thời, sừ dụng trong nội bộ.

4 bit kế tiếp là Scope: quy định phạm vi của địa chỉ Mutilcast

112 bit còn lại: định danh nhóm các host/interface có cùng địa chỉ multicast.

2.3 địa chỉ Anycast:

địa chỉ anycast là địa chỉ gán cho 1 nhóm host/interface không cùng trên 1 node mạng. khi 1 gói tin được gửi đến địa chỉ anycast, nó sẽ được gửi đến host/interface gần nhất đc định nghĩa bơi địa chỉ anycast đó. về cấu trúc thì giống địa chỉ multicast. việc gán địa chỉ unicast cho nhiều hơn 1 host/interface nghĩa là đó chính là địa chỉ anycast. trong gói tin ipv6 thì địa chi anycast không dducc sử dụng trong trường "source address"

![image](https://user-images.githubusercontent.com/95491130/180596664-bf085cd2-f34b-4059-bff4-ea4170f59d64.png)

3. phương pháp đánh địa chỉ global unicast.

3.1 gán thủ công: người quản trị mạng tự động gán 1 giá trị địa chỉ IPV6 cho host/interface bất kỳ. đối với router của Cisco có thể thực hiện lệnh như sau:

" ipv6 address 2001:DB8:111:2222::54/64 "

3.2 gán theo quy tắc EUI-64:

![image](https://user-images.githubusercontent.com/95491130/180597052-26ad2b93-3a2d-4f0e-9df1-8718651c73c3.png)

![image](https://user-images.githubusercontent.com/95491130/180597066-8b551b9f-32b0-4957-81d6-8a9e908cddd2.png)

![image](https://user-images.githubusercontent.com/95491130/180597088-f5400393-5216-4f54-83b8-437b06494994.png)







