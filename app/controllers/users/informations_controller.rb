class Users::InformationsController < ApplicationController
  def show
  	@information = Information.find(params[:id])
  end
end