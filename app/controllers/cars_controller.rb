class CarsController < ApplicationController
  def index
    @cars = Car.all
    render "cars/index"
  end

  def show
    @car = Car.find_by(id: params[:id])
    render "cars/show"
  end
end
