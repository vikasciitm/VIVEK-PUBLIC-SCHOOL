class ContactsController < ApplicationController
	def index
		@contacts=Contact.all
	end

	def new
		@contact=Contact.new
	end

	def create
		@contact=Contact.new(all_params)
		if @contact.save
			redirect_to new_user_session_path
		else
			render :new
		end
	end

	private
	def all_params
		params.require(:contact).permit(:full_name,:email,:number,:message)
	end
end