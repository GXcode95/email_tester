class MyMailer < ApplicationMailer
  def simple_email
    @username = params[:username]
    mail(
      from: 'Sender Name <from@email.com>', # you can specify a name in addition to the address
      to: 'to@email.com',
      cc: ['cc1@email.com', 'I have a name too! <cc2@email.com>', 'cc3@email.com'], # add multiple recipients
      bcc: 'bcc@email.com',
      subject: 'My first email with Rails 😎'
    )
  end

  def email_with_attachments
    attachments['Greetings.txt'] = File.read('public/hello.txt')
    attachments.inline['cat@'] = File.read('public/kitty.jpg') # also support inline attached file
    mail(
      from: 'Sender Name <from@email.com>',
      to: 'to@email.com',
      subject: 'Email with some attachments'
    )
  end
end
