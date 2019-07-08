#!/bin/bash
echo "正在删除mysql 数据库 ..."
echo "请输入mysql 数据库root 用户的密码："
echo 'drop database onlybuy;' | mysql -uroot -p
echo "清空onlybuy数据库成功"
rm -r ../onlybuy/static/images/goods
echo "清空商品图片数据"
