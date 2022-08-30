# Cài đặt trên Server CentOS 7

## Bước 1: Tải về Zabbix-Agent

        rpm -Uvh https://repo.zabbix.com/zabbix/4.4/rhel/7/x86_64/zabbix-agent-4.4.0-1.el7.x86_64.rpm

## Bước 2: Cài đặt Zabbix-agent:

        yum install zabbix-agent -y

## Bước 3: Cấu hình Zabbix-Agent:

- Sửa lại file cấu hình /etc/zabbix/zabbix_agentd.conf theo các tham số sau

      vi /etc/zabbix/zabbix_agentd.conf

- thông số cần sửa:


      Server=<IP_ZABBIX_SERVER>
      ServerActive=<IP_ZABBIX_SERVER>
      Hostname=<ZABBIX_SERVER_HOSTNAME>

- Sửa thành:

      Server=192.168.44.161
      ServerActive=192.168.44.161
      Hostname=zabbix-server-lab
      
## lưu ý: ip của máy ảo cài zabbix server nhé !

## Bước 4: Cấu hình firewalld

        firewall-cmd --zone=public --add-port=10050/tcp --permanent
        firewall-cmd --reload

## Bước 5: Khởi động lại dịch vụ

        systemctl enable zabbix-agent
        systemctl restart zabbix-agent
        systemctl status zabbix-agent
        
![image](https://user-images.githubusercontent.com/95491130/187343098-b695f59e-98c8-457b-b013-a6735e29fdfb.png)   


