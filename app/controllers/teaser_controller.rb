#encoding:utf-8
class TeaserController < ApplicationController

  def index

  end

  def save_mail

    new_mail = Contact.new
    new_mail.email = params[:email]
    check=new_mail.save

    if check==false
      redirect_to  :action => 'errorpage', :alert => "이미 등록된 메일입니다." 
    else
      redirect_to :action => 'output', :id => new_mail.id
    end
  end

  def output
    @number = params[:id]
  end

  def errorpage
    @msg = params[:alert]
  end

end
