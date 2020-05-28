class Users::SearchController < ApplicationController
  def search
    @model = params["model"]
    @content = params["content"]
    @genre = params["shop_genre_id"]
    # binding.pry
        if @model == 'course'
          from = params["price_gteq"]
          to = params["price_lteq"]
          if from.present? && to.present?
            @datas = Course.where("name LIKE ? OR introduction LIKE ?", "%#{@content}%", "%#{@content}%").where(price: from..to).where(id: shop_genre_id).order(price: :asc)
          elsif from.present?
            @datas = Course.where("name LIKE ? OR introduction LIKE ?", "%#{@content}%", "%#{@content}%").where('price >= ?', from).order(price: :asc)
          elsif to.present?
            @datas = Course.where("name LIKE ? OR introduction LIKE ?", "%#{@content}%", "%#{@content}%").where('price <= ?', to).order(price: :asc)
          else
            @datas = Course.where("name LIKE ? OR introduction LIKE ?", "%#{@content}%", "%#{@content}%").order(price: :asc)
          end
        elsif @model == 'shop'
          ff = Shop.joins(:shop_genres).merge(ShopGenre.where(id: @genre))
          @datas = ff.where("name LIKE ? OR address LIKE ?", "%#{@content}%", "%#{@content}%")  

          # @datas = aa.where("name LIKE ? OR address LIKE ?", "%#{@content}%", "%#{@content}%").order(price: :asc)
          # @datas = bb
          # @datas = Shop.joins(:shop_genres).merge(ShopGenre.where(id: @genre)).where("name LIKE ? OR address LIKE ?", "%#{@content}%", "%#{@content}%").order(price: :asc)
          # binding.pry
        end
    # binding.pry
    # if @model == "course"
    #     from = params["price_gteq"]
    #     to = params["price_lteq"]
        # binding.pry
        # if from.present? && to.present?
        #   @price = Course.where(price: from..to)
        #   @datas = partical(@model, @content, @price).order(price: :asc)
        # elsif from.present?
        #   @price = Course.where('price >= ?', from)
        #   @datas = partical(@model, @content, @price).order(price: :asc)
        # elsif to.present?
        #   @price = Course.where('price <= ?', to)
        #   @datas = partical(@model, @content, @price).order(price: :asc)
        # end

        # @datas = partical(@model, @content, @price)
     # binding.pry
  end

  private
    # def partical(model, content, price)
      # if model == 'shop'
      #   Shop.where("name LIKE ? OR address LIKE ?", "%#{content}%", "%#{content}%")
      # elsif model == 'course'
      #   Course.where("name LIKE ? OR introduction LIKE ?", "%#{content}%", "%#{content}%")
      # end
        # if model == 'course'
        #   from = params["price_gteq"]
        #   to = params["price_lteq"]
        #   if from.present? && to.present?
        #     Course.where("name LIKE ? OR introduction LIKE ?", "%#{content}%", "%#{content}%").where(price: from..to)
        #   elsif from.present?
        #     Course.where("name LIKE ? OR introduction LIKE ?", "%#{content}%", "%#{content}%").where('price >= ?', from)
        #   elsif to.present?
        #     Course.where("name LIKE ? OR introduction LIKE ?", "%#{content}%", "%#{content}%").where('price <= ?', to)
        #   else
        #     Course.where("name LIKE ? OR introduction LIKE ?", "%#{content}%", "%#{content}%")
        #   end
        # elsif model == 'shop'
        #   Shop.where("name LIKE ? OR address LIKE ?", "%#{content}%", "%#{content}%")
        # end


    # end

  # def pricezorn(model, price, content)
  #   if from.present? && to.present?
  #     Course.where(price: from..to)
  #   elsif from.present?
  #     Course.where('price >= ?', from)
  #   elsif to.present?
  #     Course.where('price <= ?', to)
  #   end
  # end


end
