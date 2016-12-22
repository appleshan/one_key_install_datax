一键部署Datax服务
============================


命令
----------------------------
- 安装

```
sh datax.sh install
```

- 修改配置

```
vim conf.json
```

- 运行

```
sh datax.sh run conf.json
```

- 高级选项
```
# 提高速度的方法
1. 如果使用工具过程中，发现默认的1GB不够，可以修改Java的启动参数，修改内存的大小。修改datax/bin/datax.py中DEFAULT_JVM的参数“-Xms8g -Xmx8g”，改为需要的大小
2. 可以修改启动Json的Channel个数，默认是1，可以根据自己的需要，适宜的加大
```
