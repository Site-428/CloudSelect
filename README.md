beta版本已发布，IP地址（需内网）：http://www.bmeonline.cn/cloudselectip/
# 环境
Ubuntu16.04+ruby 2.2.4+rails 4.2.5.2+postgresql数据库+git
# 安装
在终端（MacOS或Linux）中执行以下代码
```
git clone http://share.bmeonline.cn/admin-and-development/CloudSelect
cd CloudSelect
bundle install
rake db:migrate
rake db:seed
rails s 
```
在浏览器中输入0.0.0.0:3000访问主页