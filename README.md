# Go-AccessToHeart
## 使用Beego+Mysql+Swagger搭建的restful api
------------------
> 运行方法：`bee run -gendoc=true -downdoc=true`  
> API默认端口：`8990`  
> QPS默认端口：`8998`  
> 以上内容可以在`app.conf`中修改
------------------
### API链接 <http://139.199.34.237:8990/swagger/>
### QPS链接 <http://139.199.34.237:8998/qps>

## How to use in Ubuntu
* `source ~/.profile`
* `bee api WorkDB-api -conn="root:root@tcp(127.0.0.1:3306)/WorkDB"`
* `cd ~/go/src/WorkDB-api`
* `bee run -gendoc=true -downdoc=true`

## If mysql DB empty
* `mysql --socket=/tmp/mysql.sock --user root -proot`
* `use WorkDB`
* `source XXXX.sql`
* `quit`
