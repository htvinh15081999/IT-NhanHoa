Tìm hiểu về địa chỉ IPv4:
---------------------------------------------

Mục lục:

1. Giao thức IP

2. cấu trúc địa chỉ IPv4:
 
3. phân loại địa chỉ IPv4
 
4. địa chỉ Public và địa chỉ private.
 
5. mạng con (subnet) và mặt nạ mạng con (SubnetMark)

6. Một số VD về địa chỉ IP:


--------------------------------------------------

1. Giao thức IP

- kết nối các mạng với nhau.

- định danh gói tin IP: datagram, IP packet

- giao thức không kết nối, không tin cậy

- sử dụng địa chỉ IP để định tuyến.

- chuyển giao dữ liệu giữa lớp internet và lớp mạng truy nhập.

2. cấu trúc địa chỉ IPv4:

- địa chỉ IPv4 gồm 32 bit gồm phần network và phần host.

phần network: xác định máy đó thuộc đường mạng nào.

phần host: phân biệt máy đó với các máy khác trong cùng 1 đường mang.

- Vdu về đia chỉ ip dạng thập phân :  192.168.1.8 

 ![image](https://user-images.githubusercontent.com/95491130/180594649-7d8b723c-0276-4190-aa45-65bc27d5728b.png)
 
 3. phân loại địa chỉ IPv4

![image](https://user-images.githubusercontent.com/95491130/180594704-a5b70940-52a3-4b0a-ac14-88c2c8e01072.png)

- số lượng mạng con và host có trong từng lớp:

![image](https://user-images.githubusercontent.com/95491130/180594721-85fada97-26ae-4540-8e6b-07e4cc27b447.png)

- Địa chỉ có phần host toàn bit 1: địa chỉ broadcast ( quảng bá)

- Địa chỉ có phần host toàn bit 0: địa chỉ mạng

![image](https://user-images.githubusercontent.com/95491130/180594767-648552e4-4502-4188-b889-fb143b4fe671.png)

- địa chỉ mạng mặc định:

A: 255.0.0.0

B: 255.255.0.0

C:255.255.255.0

4. địa chỉ Public và địa chỉ private.

- địa chỉ IP phải là duy nhất (unique) trên 1 mạng.

- Public: địa chỉ quản lý bởi IANA. nằm ngoài địa chỉ private

- private: địa chỉ dùng nôi bộ trong mạng.

- dải địa chỉ private:

![image](https://user-images.githubusercontent.com/95491130/180594851-b5d1118c-0d60-49b7-b94d-1b1cae7b5782.png)

- vdu về sử dụng kết hợp giữa dchi Pub và private.

![image](https://user-images.githubusercontent.com/95491130/180594874-91a689dc-41a1-49cb-8121-c0b2811a93df.png)

5. mạng con (subnet) và mặt nạ mạng con (SubnetMark)

- ta có thể chia các mạng ở các lớp trên thành các mạng con khác nhau bằng cách mượn số bit của phần host làm bit subnet.

- subnetmark : số bít phần network và phần subnet đều bằng 1 và số bit phần host bằng 0.

-vdu về 1 subnet ở lớp B.

![image](https://user-images.githubusercontent.com/95491130/180595069-77f8734a-4df8-437d-abd0-20cd1b58b5b1.png)

giải thích: Lớp B có 16 bit network và 16 bit host , ở ví dụ trên đã mượn 6 bit của phần host làm subnet.

- băng dưới đây cho biết số lượng mạng con và host có thể có trong IPv4

![image](https://user-images.githubusercontent.com/95491130/180595179-98acd25f-eb41-4eea-aad4-98502fa058c1.png)

- địa chỉ Multicast: sử dụng lớp D , Octect đầu tiên 224-239.

6. Một số VD về địa chỉ IP:

- VD1: cho Cho địa chỉ IP 165.23.23.251 subnut=7 bit

6.1 xác định đchi IP thuộc lớp nào ?

165= 10100101: 2 bit đầu là 10 vậy đâylà địa chỉ thuộc lớp B

6.2 xdinh dchi mạng con, địa chỉ quảng bá, mặt nạ mạng con, dải địa chỉ hợp lệ.

phân tích octect 3 ra nhị phân: 165.23.00010111.251 : đây là lớp B có 16 bit network và subnet= 7 ( mượn phần host 7 bit ở byte số 3 tính từ trái qua phải ).

số bit host= 16-7=9 bit

địa chỉ mang con là địa chỉ có phần bit host =0 : 165.23.00010110.00000000=165.23.22.0

địa chỉ quảng bá là địa chỉ có phần host =1 165.23.00010111.11111111=165.23.23.255

Mặt nạ mang con là địa chỉ có các bít phần network và sub đều bật lên 1 và host =0 : 11111111.11111111.11111110.00000000=255.255.254.0

dải địa chỉ hợp lệ :165.23.22.1 đến 165.23.23.254 ( địa chỉ mạng cộng thêm 1 byte số 4 và địa chỉ quảng bá trừ đi 1 ở byte số 4).

6.3 ia chỉ 165.xy.177.78 có nằm trong giải địa chỉ này không

- Địa chỉ này k nằm trong giải địa chỉ của mạng con trên 

6.4 chia nhỏ tiếp mạng con trên sao cho mỗi mạng con chỉ có 2 địa chỉ hợp lê. Liệt ke 5 địa chỉ mạng con cuối cùng đã chia như vậy.

- Áp dụng công thức 2^x-2 = số địa chỉ có thể gán cho host

Với x là số bít bít host

Chỉ có 2 địa chỉ hợp lệ thì có 2 bit host

Bước nhảy bằng 2^x=4

- Ban đầu có 9 bít host  mượn thêm 7 bit host nữa

- Ta có mạng con cuối cùng sau khi chia 165.23.23.11111100=165.23.23.252

Trừ 4 ở byte cuối để dc các mạng con tiếp theo:

165.23.23.148

165.23.23.144

165.23.23.140

165.23.23.136








