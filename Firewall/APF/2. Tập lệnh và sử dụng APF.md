# 1. Tập lệnh thao tác với APF 

          apf -s | Khởi động APF Firewall
          apf -r | Update và khởi động lại APF Firewall
          apf -f | Dọn sạch tường lửa
          apf -st | Trạng thái hiện tại của APF Firewall
          apf -t | dừng APF Firewall
          apf -e | làm mới APF Firewall
          apf -l | danh sách các rule firewall

# 2. Tập lệnh thao tác với APF Firewall.

- Cho phép một IP nào đó vượt qua tường lửa và điền vào nhóm “Cho phép truy cập” (allow_hosts.rules):

                    apf -a IP {Lý do mở}	

- Khóa một IP nào đó và xếp vào nhóm “Chặn truy cập” (deny_hosts.rules)

                    apf -d IP {Lý do khóa}	

- Thêm APF Firewall vào danh sách tự động chạy khi khởi động lại VPS

                    chkconfig –level 2345 apf on

- Gỡ bỏ APF Firewall khỏi list chạy tự động sau khi khởi động lại VPS.

                    chkconfig –del apf	
                    
- gỡ bỏ 1 IP nào đó 

                    apf -u IP {lí do remove} 
                    
# 3. demo sử dụng:

- xem trạng thái

![image](https://user-images.githubusercontent.com/95491130/186563859-2e3359cd-8234-4ca0-b438-d2a306e6d68c.png)

- allow 1 Ip và xem lại trạng thái

![image](https://user-images.githubusercontent.com/95491130/186564194-7045f7fa-cdae-4d11-96d6-71823217d537.png)

- chặn 1 IP

![image](https://user-images.githubusercontent.com/95491130/186564499-a16b3c62-a55f-4900-a8ad-06da805f4edf.png)







