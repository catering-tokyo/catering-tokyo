class Users::HomesController < ApplicationController
  def top
  	@search_params = user_search_params
    @users = User.search(@search_params).includes(:prefecture)
  end

  def about
  end

  def terms
  end

  private
  def user_search_params
    params.fetch(:search, {}).permit(:name, :gender, :birthday_from, :birthday_to, :prefecture_id)
  end
end