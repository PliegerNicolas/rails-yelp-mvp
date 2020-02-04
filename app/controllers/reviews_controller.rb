class ReviewsController < ApplicationController
  def new
    @restaurant = find_restaurant
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = find_restaurant
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant.id)
    else
      render 'new'
    end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def index
  end

  def show
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def find_restaurant
    Restaurant.find(params[:restaurant_id])
  end
end
