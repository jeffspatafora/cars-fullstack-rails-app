class CarsController < ApplicationController
  def index
    @cars = Car.all
    render "cars/index"
  end
end
