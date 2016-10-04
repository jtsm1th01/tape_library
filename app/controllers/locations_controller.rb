class LocationsController < ApplicationController

def index
  @locations = Location.all
end

def new
  @location = Location.new
end

def show
  @location = Location.find(params[:id])
end

def edit
  @location = Location.find(params[:id])
end

def create
  @location = Location.create(location_params)
  if @location.save
    flash[:success] = "Location created successfully."
    redirect_to locations_path
  else
    render 'new'
  end
end

def update
  @location = Location.find(params[:id])
  if @location.update(location_params)
    flash[:success] = "Location name was updated."
    redirect_to locations_path
  else
    render 'edit'
  end
end

def destroy
end

private

def location_params
  params.require(:location).permit(:name)
end

end