class ContactController < ApplicationController
	layout 'application'
	def index
		@message = Contact.new
	end
	def new
		@message = Contact.new
	end
	def create
		@message = Contact.new(params[:contact])

	if @message.valid?
	 ContactMailer.new_message(@message).deliver
	 redirect_to(contact_path, :notice => "Message was successfully sent.")
	else
	 render :new
	end
	end
end
