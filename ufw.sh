#!/bin/bash

# 更新软件包列表并安装 UFW
echo "更新软件包列表并安装 UFW..."
sudo apt update && sudo apt install -y ufw

# 添加允许的规则
echo "添加允许的规则..."
sudo ufw allow 22/tcp
sudo ufw allow 22/udp
sudo ufw allow 80/tcp
sudo ufw allow 80/udp
sudo ufw allow 88/tcp
sudo ufw allow 88/udp
sudo ufw allow 443/tcp
sudo ufw allow 443/udp
sudo ufw allow 5555/tcp
sudo ufw allow 5555/udp
sudo ufw allow 8008/tcp
sudo ufw allow 8008/udp
sudo ufw allow 32767/tcp
sudo ufw allow 32767/udp
sudo ufw allow 32768/tcp
sudo ufw allow 32768/udp

# 添加拒绝的规则
echo "添加拒绝的规则..."
sudo ufw deny from 162.142.125.0/24
sudo ufw deny from 167.94.138.0/24
sudo ufw deny from 167.94.145.0/24
sudo ufw deny from 167.94.146.0/24
sudo ufw deny from 167.248.133.0/24
sudo ufw deny from 199.45.154.0/24
sudo ufw deny from 199.45.155.0/24
sudo ufw deny from 206.168.34.0/24
sudo ufw deny from 2602:80d:1000:b0cc:e::/80
sudo ufw deny from 2620:96:e000:b0cc:e::/80
sudo ufw deny from 2602:80d:1003::/112
sudo ufw deny from 2602:80d:1004::/112

# 启用 UFW
echo "启用 UFW..."
sudo ufw enable

# 显示 UFW 状态和规则
echo "当前 UFW 状态和规则如下："
sudo ufw status verbose

echo "脚本执行完成！"
