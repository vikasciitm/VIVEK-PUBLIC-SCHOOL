class SecondeariesController < ApplicationController
	def index
		@secondearys=Secondeary.all
	end
	def new
		@secondeary=Secondeary.new
	end
	def create
		@secondeary=Secondeary.new(all_params)
		if @secondeary.save
			redirect_to secondearies_path
		else
			render :new
		end
	end
	def edit
		@secondeary=Secondeary.find(params[:id])
	end
	def update
		@secondeary=Secondeary.find(params[:id])
		if @secondeary.update(all_params)
			redirect_to secondearies_path
		else
			render :edit
		end
	end
	def show
	end

	private
	def all_params
		{first_name: params[:secondeary][:first_name],last_name: params[:secondeary][:last_name],email: params[:secondeary][:email],number: params[:secondeary][:number],dob: params[:secondeary][:dob],add: params[:secondeary][:add]}
	end
end