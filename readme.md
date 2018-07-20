## 1.单体工程

### 1.1 环境准备
         
- `Java`:  版本JDK1.8及以上
- `Maven`:  版本3.0及以上
- `开发IDE`: Spring Tool Suite(STS)3.8.4.RELEASE 或者 Intellij  Idea
- `Mysql` :  版本5.6及以上,导入sql文件houses_2018-01-07.sql         
```Linux & Mac 下安装  
   Mac 通过brew install mysql 安装
    Linux 请参考博客https://www.cnblogs.com/bookwed/p/5896619.html
    Windows下安装   
    请参考博客https://www.cnblogs.com/sshoub/p/4321640.html
```

`Redis` :   版本2.8及以上

```
 Linux & Mac 下安装            
$ wget http://download.redis.io/releases/redis-3.2.11.tar.gz
$ tar xzf redis-3.2.11.tar.gz
$ cd redis-3.2.11
$ make

#编译安装后进入src目录,后台执行redis-server
$ cd src
#启动成功执行redis-cli进入redis命令行终端
$ nohup ./redis-server &


 Windows下安装            
 下载地址：https://github.com/MSOpenTech/redis/releases。
  Redis-x64-xxx.zip压缩包到 C 盘，解压后，将文件夹重新命名为 redis, 打开一个 cmd 窗口使用 
  cd命令切换目录到 C:\redis 运行 redis-server.exe redis.windows.conf 。
```

`Nginx` :   版本1.8.0及以上

```
Linux & Mac 下安装
$ wget http://nginx.org/download/nginx-1.8.1.tar.gz
$ tar -xzvf nginx-1.8.1.tar.gz
$ cd nginx-1.8.1

#指定nginx安装目录到你本地某个目录
$ ./configure —prefix=/the/path/nginx
$ make && make install

#修改配置文件，nginx.conf见代码包
$ vim /the/path/nginx/nginx.conf
$ cd /the/path/nginx
#启动nginx
$ sbin/nginx 
#修改nginx.conf进行reload即可生效
$ sbin/nginx -s reload

Windows下安装 
下载 http://nginx.org/download/nginx-1.8.1.zip
解压后，进入nginx目录，修改nginx.conf文件，执行nginx.exe

```
### 1.2 打包部署

SpringAdmin监控工程的打包启动     
  方式一
                maven clean package
                java -jar target/admin-0.0.1-SNAPSHOT.jar
  方式二               
                maven spring-boot:run

房产工程的打包启动  
                上述环境和依赖组件准备好后，在application.properties文件中修改相应IP、Port，
                工程根目录下执行maven clean package,然后进入house-web/target目录，会发现有一个
                house-web-1.0.0-SNAPSHOT.jar ;
                执行 java -jar  house-web-1.0.0-SNAPSHOT.jar 即可启动;
                通过浏览器方式http://localhost:8091/index


## 2.微服务工程
### 2.1 环境准备
         
- `Java`   :  版本JDK1.8及以上
- `Maven`:  版本3.0及以上
- `Mysql` :  版本5.6及以上 ，安装见1.1，导入sql文件comment_2018-01-07.sql, house_2018-01-07.sql, user_2018-01-07.sql
- `Redis` :   版本2.8及以上 ，安装见1.1
- `Nginx`:    版本1.8.0及以上，安装见1.1

### 2.2 打包部署

**监控平台&服务治理**

  Eureka Server (服务注册发现)
  maven spring-boot:run或者
  maven clean package
  java -jar eureka-sever-1.0.0-SNAPSHOT.jar
 服务地址 http://127.0.0.1:8666


**Hystrix Dashboard (断路器监控面板)**

  maven spring-boot:run或者
  maven clean package
  java -jar  hystrixdashboard-1.0.0-SNAPSHOT.jar
  服务地址 http://127.0.0.1:9097      

               
**Zipkin Server & UI (链路追踪数据收集服务及监控面板)**
   
 maven spring-boot:run或者
 maven clean package
 java -jar  zipkin-1.0.0-SNAPSHOT.jar
  服务地址 http://127.0.0.1:9411 

  
**SpringBoot Admin (服务状态监控)**
  见1.2                      
 业务服务
   
  
**用户服务(User Service)** 
  
  maven spring-boot:run或者
  maven clean package
  java -jar user-srv.jar
  服务地址 http://127.0.0.1:8083
  ```

**房产服务(House Service)**
 
  maven spring-boot:run或者
  maven clean package
  java -jar house-srv-0.0.1-SNAPSHOT.jar
  服务地址 http://127.0.0.1:8084
 

**评论服务(Comment Service)** 
  
  maven spring-boot:run或者 
  maven clean package
  java -jar comment-srv-0.0.1-SNAPSHOT.jar
  服务地址 http://127.0.0.1:8085
  

**网关服务(API Gateway)** 
  
  maven spring-boot:run或者
  maven clean package
  java -jar api-gateway-0.0.1-SNAPSHOT.jar
  服务地址 http://127.0.0.1:8085
  