class ContactMailer < ActionMailer::Base
  default :from => "noreply@youdomain.dev"
  default :to => "nancy.partain@yahoo.com"
  
  def new_message(message)
    @message = message
    mail(:subject => message.name, :content_type => 'text/plain')
  end
end
