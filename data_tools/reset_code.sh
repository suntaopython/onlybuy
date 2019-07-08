#!/bin/bash

# 此工具的作用是清空Django 中间生成的代码，如 .pyc 文件和 和数据库迁移文件.
# 将程序恢复为源码状态，并同时删除数据库中的相应数据表及数据库

echo "正在 删除 mysql 的 onlybuy 数据库..."
echo "请输入mysql 数据库root 用户的密码："
echo 'drop database onlybuy;' | mysql -uroot -p


# 清除全部自动生成的代码...
echo "正在 清空 onlybuy用户图片数据..."
rm -r ../onlybuy/static/images/goods
echo "清空商品图片数据 OK"

echo "正在清除缓存文件..."
find ../onlybuy -name "__pycache__"
find ../onlybuy -name "__pycache__" | xargs rm -rf

echo "正在清除迁移文件..."
find ../onlybuy -name "000?_*\.py" | xargs rm


echo "清除完毕"

