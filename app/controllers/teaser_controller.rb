class TeaserController < ApplicationController

  def index

  end

  def save_mail

  new_mail = Mail.new
  new_mail = params[:address]
  new_mail.save

  render  :status => 200
  end
end
