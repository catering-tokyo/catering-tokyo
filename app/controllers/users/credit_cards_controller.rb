class Users::CreditCardsController < ApplicationController
  def index
    @credit_cards = CreditCard.where(user_id: current_user.id)
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end