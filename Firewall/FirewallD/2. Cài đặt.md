# Cài đặt firewallD

– FirewallD được cài đặt mặc định trên CentOS 7. Cài đặt nếu chưa có:

    + yum install firewalld

![image](https://user-images.githubusercontent.com/95491130/186635231-35d0c2bf-f5ff-4b55-b27a-b3de9bb37fa8.png)

– Khởi động FirewallD:

    + systemctl start firewalld

– Kiểm tra tình trạng hoạt động

    + systemctl status firewalld

![image](https://user-images.githubusercontent.com/95491130/186635332-729a61ab-fffa-42ea-8607-237694e97948.png)

– Thiết lập FirewallD khởi động cùng hệ thống
    
    + systemctl enable firewalld

- Kiểm tra lại :

    + systemctl is-enabled firewalld

![image](https://user-images.githubusercontent.com/95491130/186635452-4e0c2c98-3935-45e4-9c4e-d860b9ff0d7c.png)

- Ban đầu, bạn không nên cho phép FirewallD khởi động cùng hệ thống cũng như thiết lập Permanent, tránh bị khóa khỏi hệ thống nếu thiết lập sai. Chỉ thiết lập như vậy khi bạn đã hoàn thành các quy tắc tường lửa cũng như test cẩn thận.

– Khởi động lại

    + systemctl restart firewalld
    + firewall-cmd --reload

– Dừng và vô hiệu hóa FirewallD

    + systemctl stop firewalld
    + systemctl disable firewalld
