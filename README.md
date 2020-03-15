# DEMO网址
[http://www.bmeonline.cn/cloudselect](http://seubmecloudselect.herokuapp.com/)
# 准备
## HEROKU
须在[HEROKU](https://www.heroku.com/)注册账号并创建APP。<br>
安装[Heroku-CLI](https://devcenter.heroku.com/articles/heroku-cli)，终端运行`heroku login`登录。
## 数据库
免费用户每个HerokuAPP最多拥有一个数据库，记录数限制为10000。可在[DATA](https://data.heroku.com/)页面查看数据库基本信息。若无数据库，运行以下命令创建：
```shell
heroku addons:create heroku-postgresql:hobby-dev --version=10
```
数据库基本信息须填入[config/database.yml](http://share.bmeonline.cn/admin-and-development/CloudSelect/blob/production/config/database.yml)。
# 部署
在[Gemfile](http://share.bmeonline.cn/admin-and-development/CloudSelect/blob/production/Gemfile)添加生产环境内容：
```ruby
group :production do
  gem 'rails_12factor'
  gem "pg", '0.19'
end
```
在终端中执行以下代码:
```shell
cd <APP>
git init
heroku git:remote -a <APP>
heroku stack:set heroku-16 # heroku-18不支持ruby-2.2.4
bundle install
RAILS_ENV=production bundle exec rake assets:precompile # 预编译，防止部署时资源不足
git add .
git commit -am "make it better"
git push heroku master
```
推送成功后执行：
```shell
heroku run rake db:migrate
heroku run rake db:seed
```
浏览器输入`https://<APP>.herokuapp.com`访问。