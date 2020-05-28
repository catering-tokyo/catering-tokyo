class Admins::ReviewsController < ApplicationController
  
	def destroy
		@review = Review.find(params[:id])
		@shop = @review.shop
    	@review.destroy
    	redirect_to admins_shop_path(@shop.id), notice: "このお店にレビューを削除しました!"
	end

  private
  def review_params
  	params.require(:review).permit(:title, :body, :star)
  end
end
