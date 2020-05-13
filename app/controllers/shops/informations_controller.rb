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

  def confirm
    @shop = current_shop
    @information = Information.new
    @information.title = params[:title]
    @information.text = params[:text]
  end

  def show
    @information = Information.find(params[:id])
  end

  def edit
    @information = Information.find(params[:id])
  end

  def update
    @information = Information.find(params[:id])
    if @information.update(information_params)
      redirect_to shops_information_path(@information.id)
    else
      render 'edit'
    end
  end

  def destroy
    information = Information.find(params[:id])
      information.destroy
    redirect_to shops_informations_path notice: "削除が完了しました"
  end

  private
    def information_params
        params.require(:information).permit(:shop_id,:title,:information_image,:text)
    end
end
