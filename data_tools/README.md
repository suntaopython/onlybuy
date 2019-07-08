# 此软件研发调试工具使用说明
## 目录

### 安装相应软件
- 安装本软件需要用到的第三方python包
```bash
$ sudo pip3 install PyMySQL==0.9.3
$ sudo pip3 install django==1.11.8
$ sudo pip3 install Pillow==6.0.0
```
### 创建和初始化数据库
- 以下命令可以创建初始化 mysql 数据库
```shell
$ chmod +x init_mysql.sh
$ ./init_mysql.sh
或
$ ./init_mysql.sh
```
### 删除数据库中的全部数据并删除用户添加的商品信息图片
- 以下命令可以删除 mysql 数据库
```shell
$ chmod +x init_mysql.sh
$ ./uninit_mysql.sh
或
$ ./uninit_mysql.sh
```

### 创建数据库，添加测试用商品列表和测试用户数据
- 以下命令可以删除 mysql 数据库,同时删除用户运行时的全部数据,如: 商品数据;运行时的中间代码`migraions/0001_initial.py`等
```shell
$ chmod +x init_mysql.sh
$ ./reset_code.sh
或
$ ./reset_code.sh
```



