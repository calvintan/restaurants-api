class Api::V1::RestaurantsController < Api::V1::BaseController
  skip_before_action :verify_authenticity_token
  before_action :find_restaurant, only: [:show, :update]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def update
    if @restaurant.update(restaurant_params)
      render :show
    else
      render_error
    end
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :image, :description)
  end

  def render_error
    render json: { errors: @restaurant.errors.full_messages },
      status: :unprocessable_entity
  end
end
