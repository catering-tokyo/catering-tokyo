class Users::ReviewsController < ApplicationController

	def create
		@shop = Shop.find(params[:shop_id])
		@review = @shop.reviews.new(review_params)
  		@review.user_id = current_user.id
  	  if @review.save
  		redirect_to users_shop_path(@shop.id), notice: "このお店にレビューしました!"
  	  end
  		@reviews = @shop.reviews
	end

	def destroy
		@review = Review.find(params[:shop_id])
		@shop = @review.shop
		if @review.user == current_user
    	   @review.destroy
    	   redirect_to users_shop_path(@shop.id), notice: "このお店にレビューを削除しました!"
    	end
	end

	private

  def review_params
  	params.require(:review).permit(:title, :body, :star)
  end
end