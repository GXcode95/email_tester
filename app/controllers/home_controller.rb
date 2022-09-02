class HomeController < ApplicationController
  def index; end

  def send_simple_email
    username = params[:name]
    MyMailer.with(username: username).simple_email.deliver_later
    redirect_to root_path, notice: 'Send custom email'
  end

  def email_with_attachments
    MyMailer.email_with_attachments.deliver_later
    redirect_to root_path, notice: 'Send email with attachments'
  end
end
