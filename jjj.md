<VirtualHost *:80>
     
     DocumentRoot /var/www/html/tubui.xyz/
    
    ServerName www.tubui.xyz
    
    ServerAlias tubui.xyz
    
    ErrorLog /var/www/html/tubui.xyz/error.log
    
    CustomLog /var/www/html/tubui.xyz/requests.log common

</VirtualHost>
