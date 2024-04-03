class AdmissionsController < ApplicationController
	def index
		@admissions=Admission.all
		@admission=Admission.new
	end

	def new	
	end

	def create
		@admission=Admission.new(all_prams)
		@admission.save
		redirect_to admissions_path
	end

	def edit
		@admission=Admission.find(params[:id])
	end

	def update
		@admission=Admission.find(params[:id])
		if @admission.update(all_prams)
			redirect_to admissions_path
		else
			render :edit
		end
	end

	def show
		@admission=Admission.find(params[:id])
	end

	def destroy
		@admission=Admission.find(params[:id])
		@admission.destroy
		redirect_to admissions_path
	end

	private
	def all_prams
		{first_name: params[:admission][:first_name],last_name: params[:admission][:last_name],email: params[:admission][:email],number: params[:admission][:number],klass: params[:admission][:klass],address: params[:admission][:address],address2: params[:admission][:address2],city: params[:admission][:city],state: params[:admission][:state],peen: params[:admission][:peen]}
	end
end