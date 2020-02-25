class Api::UsersController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])

    @recent_food = @user.foods.order("created_at DESC").limit(3)
    @average_cost = @user.orders.average(:cost) 

    if params[:categories].present?
      @recent_food = @user.foods.where("LOWER(categories) LIKE LOWER(?)", "%#{params[:categories]}%").distinct
    end  


    @egg_purchases = @user.foods.where("categories ILIKE ?", "%egg%")

    render "show.json.jb"
  end
end
