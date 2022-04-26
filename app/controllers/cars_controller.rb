class CarsController < ApplicationController
  def index
    @cars = Car.all
    render "cars/index"
  end

  def new
    render "cars/new"
  end

  def show
    @car = Car.find_by(id: params[:id])
    render "cars/show"
  end

  def create
    car = Car.new(
      make: params[:make], 
      model: params[:model],
      year: params[:year],
      color: params[:color],
    )
    car.save

    redirect_to "/cars/#{car.id}"
  end
end
