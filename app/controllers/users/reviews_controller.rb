class Users::ReviewsController < ApplicationController
	def create
		@review = Review.new(review_params)
  		@review.user_id = current_user.id
		@review.save
  		redirect_to request.referer, notice: "このお店にレビューしました!"
	end

	def destroy
		@review = Review.find(params[:id])
    	@review.destroy
    	redirect_to request.referer, notice: "このお店のレビューしました!"
	end

	private

  def review_params
  	params.require(:review).permit(:title, :item_image, :description, :genre_status, :category_id, :user_id, :item_image_id, :item_sound_id, :item_video_id )
  end
end

      t.string :title, null: false
      t.text :body, null: false
      t.integer :star, null: false