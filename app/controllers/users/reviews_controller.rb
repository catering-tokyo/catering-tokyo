class Users::ReviewsController < ApplicationController

	def create
		@shop = Shop.find(params[:id])
		@review = @shop.review.new(review_params)
  		@review.user_id = current_user.id
		@review.save
  		redirect_to request.referer, notice: "このお店にレビューしました!"
  		@reviews = @shop.reviews.all
	end

	def destroy
		@review = Review.find(params[:id])
    	@review.destroy
    	redirect_to request.referer, notice: "このお店のレビューしました!"
	end

	private

  def review_params
  	params.require(:review).permit(:title, :body, :star)
  end
end