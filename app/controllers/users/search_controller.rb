class Users::SearchController < ApplicationController
  def search
    @model = params["model"]
    @content = params["content"]
    # binding.pry
        if @model == 'course'
          from = params["price_gteq"]
          to = params["price_lteq"]
          if from.present? && to.present?
            @datas = Course.where("name LIKE ? OR introduction LIKE ?", "%#{@content}%", "%#{@content}%")
                           .where(price: from..to)
                           .order(price: :asc)
          elsif from.present?
            @datas = Course.where("name LIKE ? OR introduction LIKE ?", "%#{@content}%", "%#{@content}%")
                           .where('price >= ?', from)
                           .order(price: :asc)
          elsif to.present?
            @datas = Course.where("name LIKE ? OR introduction LIKE ?", "%#{@content}%", "%#{@content}%")
                           .where('price <= ?', to)
                           .order(price: :asc)
          else
            @datas = Course.where("name LIKE ? OR introduction LIKE ?", "%#{@content}%", "%#{@content}%")
                           .order(price: :asc)
          end

        elsif @model == 'shop'
          @genre = params["shop_genre_id"]
          if @genre.present? && @content.present?
            @genres = Shop.joins(:shop_genres)
                          .merge(ShopGenre.where(id: @genre))
            @shops = Shop.where("name LIKE ? OR address LIKE ?", "%#{@content}%", "%#{@content}%")
            @datas = @shops.where(id: @genres)
          elsif @content.present?
            @datas = Shop.where("name LIKE ? OR address LIKE ?", "%#{@content}%", "%#{@content}%")
          elsif @genre.present?
            @datas = Shop.joins(:shop_genres)
                         .merge(ShopGenre.where(id: @genre))
          # binding.pry
          end
        end
  end
end
