#  Cài đặt CSF (ConfigServer & Firewall)

## Bước 1: tắt selinux

![image](https://user-images.githubusercontent.com/95491130/186311244-37e9a338-002a-4e32-aa57-ec23ea5501c3.png)

## Bước 2: Cài đặt module Perl cho CSF script

        yum install perl-libwww-perl

## Bước 3: Tải CSF

        cd /tmp
        wget https://download.configserver.com/csf.tgz

## Bước 4: Giải nén và cài đặt

        tar -xzf csf.tgz
        cd csf
        sh install.sh
        
![image](https://user-images.githubusercontent.com/95491130/186311423-7aa2a0fb-a291-46c9-ba81-2fa74b645b3c.png)
