#!/bin/bash
echo "正在初始化mysql 数据库..."
echo "请输入mysql 数据库root 用户的密码："
echo "create database onlybuy default charset utf8 collate utf8_general_ci;" | mysql -uroot -p
echo "正在迁移数据库..."
python3 ../onlybuy/manage.py makemigrations
python3 ../onlybuy/manage.py migrate
echo "初始化数据库成功"

