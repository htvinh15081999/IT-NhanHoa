# Cấu hình FirewallD

## Thiết lập các zone
- Liệt kê tất cả các zone trong hệ thống

    + firewall-cmd --get-zones

- Kiểm tra zone mặc định

    + firewall-cmd --get-default-zone
    
![image](https://user-images.githubusercontent.com/95491130/186796930-b6835bd3-f32c-4e33-9b46-715106318d40.png)
 
- Kiểm tra zone active (được sử dụng bởi giao diện mạng)
    + Vì FirewallD chưa được thiết lập bất kỳ quy tắc nào nên zone mặc định cũng đồng thời là zone duy nhất được kích hoạt, điều khiển mọi luồng dữ liệu.

    + firewall-cmd --get-active-zones

![image](https://user-images.githubusercontent.com/95491130/186797145-798ea3f6-bcf2-4e74-a904-2fb810b837a2.png)

- Thay đổi zone mặc định, ví dụ thành home:

    + firewall-cmd --set-default-zone=home

![image](https://user-images.githubusercontent.com/95491130/186797210-064922a3-5421-42d3-a260-3f1f38f5f736.png)

## Các lệnh liệt kê

- Liệt kê toàn bộ các quy tắc của các zones:
        + firewall-cmd --list-all-zones

![image](https://user-images.githubusercontent.com/95491130/186797365-66227c0c-93b5-4bc5-81cb-50e453d834e6.png)

- Liệt kê toàn bộ các quy tắc trong zone mặc định và zone active
    + firewall-cmd --list-all

![image](https://user-images.githubusercontent.com/95491130/186797430-44ca8718-39e3-47f0-b51c-a182e314cd02.png)

- Liệt kê toàn bộ các quy tắc trong một zone cụ thể, ví dụ home
    + firewall-cmd --zone=home --list-all

![image](https://user-images.githubusercontent.com/95491130/186797475-85eaacb9-9d77-434e-863c-d38d1626403c.png)

- Liệt kê danh sách services/port được cho phép trong zone cụ thể:
    + firewall-cmd --zone=public --list-services

![image](https://user-images.githubusercontent.com/95491130/186797709-05cc0d33-6c4f-4ce9-948f-7cd9f1ec9d79.png)

    + firewall-cmd --zone=public --list-ports

## Thiết lập cho Service

- Đây chính là điểm khác biệt của FirewallD so với Iptables – quản lý thông qua các services. Việc thiết lập tường lửa đã trở nên dễ dàng hơn bao giờ hết – chỉ việc thêm các services vào zone đang sử dụng.
- Đầu tiên, xác định các services trên hệ thống:
    + firewall-cmd --get-services
    + Lưu ý: Biết thêm thông tin về service qua thông tin lưu tại /usr/lib/firewalld/services/.
    
![image](https://user-images.githubusercontent.com/95491130/186797877-ec493260-5880-437a-9a7a-90795ba872cc.png)

- Hệ thống thông thường cần cho phép các services sau: ssh(22/TCP), http(80/TCP), https(443/TCP), smtp(25/TCP), smtps(465/TCP) và smtp-submission(587/TCP)

- Thiết lập cho phép services trên FirewallD, sử dụng –add-service:

    + firewall-cmd --zone=public --add-service=http

    + firewall-cmd --zone=public --add-service=http --permanent

- Ngay lập tức, zone “public” cho phép kết nối HTTP trên cổng 80. Kiểm tra lại

    + firewall-cmd --zone=public --list-services

![image](https://user-images.githubusercontent.com/95491130/186798133-bcf13499-d20c-4ff9-ba15-f6054e764079.png)

- Vô hiệu hóa services trên FirewallD, sử dụng –remove-service:

    + firewall-cmd --zone=public --remove-service=http
    + firewall-cmd --zone=public --remove-service=http --permanent

![image](https://user-images.githubusercontent.com/95491130/186798227-37d7d895-efeb-4cca-903b-beeac0b177e4.png)

## Thiết lập cho port
- Mở Port với tham số –add-port:

    + firewall-cmd --zone=public --add-port=9999/tcp
    + firewall-cmd --zone=public --add-port=9999/tcp --permanent
- Mở 1 dải port:
    + firewall-cmd --zone=public --add-port=4990-5000/tcp
    + firewall-cmd --zone=public --add-port=4990-5000/tcp --permanent
- Kiểm tra lại

    + firewall-cmd --zone=public --list-ports

![image](https://user-images.githubusercontent.com/95491130/186798402-abfcfbf8-58f4-4c10-9afe-362a65060536.png)

- Đóng Port với tham số –remove-port:

    + firewall-cmd --zone=public --remove-port=9999/tcp
    + firewall-cmd --zone=public --remove-port=9999/tcp --permanent

![image](https://user-images.githubusercontent.com/95491130/186798465-2dd5a586-3d55-4eca-a2c0-ff65a12d2364.png)

# Cấu hình nâng cao.

## 1. Tạo Zone riêng

- Mặc dù, các zone có sẵn là quá đủ với nhu cầu sử dụng, bạn vẫn có thể tạo lập zone của riêng mình để mô tả rõ ràng hơn về các chức năng của chúng. Ví dụ, bạn có thể tạo riêng một zone cho webserver publicweb hay một zone cấu hình riêng cho DNS trong mạng nội bộ privateDNS. Bạn cần thiết lập Permanent khi thêm một zone.

- tạo zone mới

            firewall-cmd --permanent --new-zone=hothanhvinh
            firewall-cmd --permanent --new-zone=nguyenkhanhhuyen
            
- khởi động lại firewall

            firewall-cmd --reload
            
- lấy ra danh sách zone:

            irewall-cmd --get-zones

![image](https://user-images.githubusercontent.com/95491130/186799356-529fa1bf-df27-4f30-b189-4be7ba25e998.png)

- thêm các dịch vụ cho zone vừa tạo:

firewall-cmd --zone=hothanhvinh --add-service=ssh --permanent
firewall-cmd --zone=hothanhvinh --add-service=http --permanent
firewall-cmd --zone=hothanhvinh --add-service=https --permanent

![image](https://user-images.githubusercontent.com/95491130/186799883-139f3430-022f-4f59-b501-0cd3422ce0c4.png)

![image](https://user-images.githubusercontent.com/95491130/186799950-c57bf654-a8cb-424c-85dc-0ed7c5ef17d1.png)


## 2. Định nghĩa services riêng trên FirewallD

- Việc mở port trên tường lửa rất dễ dàng nhưng lại khiến bạn gặp khó khăn khi ghi nhớ các port và các services tương ứng. Vì vậy, khi có một services mới thêm vào hệ thống, bạn sẽ có 2 phương án:

                Mở Port của services đó trên FirewallD

                Tự định nghĩa services đó trên FirewallD

- Định nghĩa servies huyenapple với port 1508.

– Tạo file định nghĩa riêng từ file chuẩn ban đầu

        cp /usr/lib/firewalld/services/ssh.xml /etc/firewalld/services/huyenapple.xml

– Chỉnh sửa để định nghĩa servies trên FirewallD

        nano /etc/firewalld/services/huyenapple.xml
        
![image](https://user-images.githubusercontent.com/95491130/186801764-30a009e8-d6ab-4b5c-aa6e-2cb58fa68dea.png) 

- thêm đoạn sau vào

        <?xml version="1.0" encoding="utf-8"?>
        <service>
        <short>huyenapple</short>
        <description>Control huyenapple Web Tool</description>
        <port protocol="tcp" port="1508"/>
        </service>
        
![image](https://user-images.githubusercontent.com/95491130/186801723-62cdaed5-7f5f-4dfb-a469-cbe9d3f8d50a.png)

– Lưu lại và khởi động lại FirewallD

        firewall-cmd --reload
        
![image](https://user-images.githubusercontent.com/95491130/186801938-cdf44228-12ba-4094-ad84-91b0367e9827.png)

– Kiểm tra lại danh sách services:

        firewall-cmd --get-services

![image](https://user-images.githubusercontent.com/95491130/186801896-f59a6ef8-c1a6-4da3-a645-df8e70204b7c.png)


- huyenapple đã được thêm vào danh sách services của FirewallD. Bạn có thể thiết lập như các servies thông thường, bao gồm cả cho phép/chặn trong zone. Ví dụ:

    firewall-cmd --zone=hothanhvinh --add-service=huyenapple
    firewall-cmd --zone=hothanhvinh --add-service=huyenapple --permanent
    
![image](https://user-images.githubusercontent.com/95491130/186802150-bcb9cd9f-ba06-44ea-babf-83dd2566d9c0.png)
