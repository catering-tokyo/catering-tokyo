class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_in_path_for(resource)
		case resource
		when Admin
			 admins_top_path
		when User
			 root_path
		when Shop
			 shops_shop_path(shop_id)
		end
	end

	def after_sign_out_path_for(resource)
		if resource == :admin
      		new_admin_session_path
    	elsif  resource == :user
      		root_path
      	elsif resource == :shop
      		new_shop_session_path
    	end
	end

	protected

	def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phonenumber, :address])
	end
end
