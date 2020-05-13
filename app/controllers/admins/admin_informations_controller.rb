class Admins::AdminInformationsController < ApplicationController

	def index
		@infos = AdminInformation.all
	end

	def create
		@info = AdminInformation.new(admin_info_params)
		if @info.save
			redirect_to admins_admin_information_path(@info)
		else
			render 'new'
		end
	end

	def new
		@info = AdminInformation.new
	end

	def edit
		@info = AdminInformation.find(params[:id])
	end

	def show
		@info = AdminInformation.find(params[:id])
	end

	def update
		@info = AdminInformation.find(params[:id])
		if @info.update(admin_info_params)
		   redirect_to admins_admin_information_path(@info)
		else
    	   render 'edit'
	    end
	end

	def destroy
		@info = AdminInformation.find(params[:id])
		@info.destroy
		redirect_to admins_admin_informations_path, notice: "successfully delete shop!"
	end

	private
	def admin_info_params
		params.require(:admin_information).permit(:title, :body, :info_image, :info_status)
	end
end
