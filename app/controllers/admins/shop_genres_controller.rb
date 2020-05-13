class Admins::ShopGenresController < ApplicationController
  before_action :authenticate_admin!

  def index
    @genre = ShopGenre.new
    @genres = ShopGenre.all
  end

  def create
    @genre = ShopGenre.new(genre_params)
    @genres = ShopGenre.all
    if @genre.save
       redirect_to admins_shop_genres_path
    else
       render "index"
    end
  end

  def edit
    @genre = ShopGenre.find(params[:id])
  end

  def update
    @genre = ShopGenre.find(params[:id])
      if @genre.update(genre_params)
         redirect_to admins_shop_genres_path
      else
         redirect_back(fallback_location: edit_admins_shop_genre_path)
      end
  end

  def destroy
    genres = ShopGenre.find(params[:id])
    genres.destroy
    redirect_to admins_shop_genres_path
  end

  private
    def genre_params
      params.require(:shop_genre).permit(:name, :genre_image)
    end
end
