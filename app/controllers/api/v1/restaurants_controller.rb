class Api::V1::RestaurantsController < Api::V1::BaseController
  def index
    @restaurant = Restaurant.all
    # render json: @restaurant
  end
end
