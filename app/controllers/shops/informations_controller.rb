class Shops::InformationsController < ApplicationController
  def index
    @informations = Information.all
  end

  def new
    @information = Information.new
    @shops = Shop.all
  end

  def create
    @information = Information.new(information_params)
    @information.shop_id = current_shop.id
    if @information.save
      redirect_to shops_information_path(@information.id)
    else
      render 'new'
    end
  end


  def show
    @information = Information.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def information_params
        params.require(:information).permit(:shop_id,:title,:information_image,:text)
    end
end
