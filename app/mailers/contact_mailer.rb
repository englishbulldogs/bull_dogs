class ContactMailer < ActionMailer::Base
  default :from => "noreply@youdomain.dev"
  default :to => "mail@derekduncan.me"
  
  def new_message(message)
    @message = message
    mail(:subject => message.name, :content_type => 'text/plain')
  end
end
