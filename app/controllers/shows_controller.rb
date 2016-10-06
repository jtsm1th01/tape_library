class ShowsController < ApplicationController

def index
  @shows = Show.all
end

def new
  @show = Show.new
end

def show
  @show = Show.find(params[:id])
end

def edit
  @show = Show.find(params[:id])
end

def create
  @show = Show.new(show_params)
  if @show.save
    flash[:success] = "Show was successfully added."
    redirect_to show_path(@show)
  else
    render 'new'
  end
end

def update
  @show = Show.find(params[:id])
  if @show.update(show_params)
    flash[:success] = "Show was successfully updated."
    redirect_to show_path(@show)
  else
    render 'edit'
  end
end

private

def show_params
  params.require(:show).permit(:name)
end

end