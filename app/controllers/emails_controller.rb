class EmailsController < ApplicationController
  # before_action :index
  # def index
  #   redirect_to :action => create
  # end
  def index
    message=Emails.index
    message.deliver
  end

  def create
    @course=Course.find_by_id(params[:id])
    @sender = params[:sender]
    @recipient = params[:recipient]
    @subject = params[:subject]
    @body = params[:body]
    @recipient_email=User.find_by_id(@course.teacher).email
    message=Emails.index(@sender,@recipient,@subject,@body,@recipient_email)
    message.deliver
    return if request.xhr?
    redirect_to list_courses_path,flash:{:success => "发送成功"}
  end

end
