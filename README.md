# 简介
基于国科大[CourseSelect](https://github.com/PENGZhaoqing/CourseSelect)二次开发的我院计算资源预约管理系统。<br>
请于此处查看：[**DEMO**](http://www.bmeonline.cn/cloudselect) [**WIKI**](http://share.bmeonline.cn/admin-and-development/CloudSelect/wikis/%E7%94%9F%E5%8C%BB%E8%AE%A1%E7%AE%97%E4%BA%91%E9%A2%84%E7%BA%A6%E7%B3%BB%E7%BB%9F%E4%BD%BF%E7%94%A8%E6%8C%87%E5%8D%97) [**Heroku部署**](http://share.bmeonline.cn/admin-and-development/CloudSelect/blob/production/README.md)
# 环境
Ubuntu16.04+ruby 2.2.4+rails 4.2.5.2+postgresql数据库+git
# 安装
在终端（MacOS或Linux）中执行以下代码
```shell
git clone http://share.bmeonline.cn/admin-and-development/CloudSelect
cd CloudSelect
bundle install
rake db:migrate
rake db:seed
rails s 
```
在浏览器中输入0.0.0.0:3000访问主页