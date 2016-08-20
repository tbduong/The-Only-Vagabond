class CitiesController < ApplicationController
  def index
    @cities = City.all
    render :index
  end

  def new
    @city = City.new
    render :new
  end

  def create
    @city = City.create(city_params)
  end

  def show
    @city = City.find(params[:id])
    render :show
  end

  def destroy
    @city.delete(params[:id])
  end

private

def city_params
  params.require(:city).permit(:name, :comment_id)

end
end
