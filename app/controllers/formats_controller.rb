class FormatsController < ApplicationController

def index
  @formats = Format.all
end

def new
  @format = Format.new
end

def show
  @format = Format.find(params[:id])
end

def edit
  @format = Format.find(params[:id])
end

def create
  @format = Format.create(format_params)
  if @format.save
    flash[:success] = "Format created successfully."
    redirect_to formats_path
  else
    render 'new'
  end
end

def update
  @format = Format.find(params[:id])
  if @format.update(format_params)
    flash[:success] = "Format name was updated."
    redirect_to formats_path
  else
    render 'edit'
  end
end

def destroy
end

private

def format_params
  params.require(:format).permit(:name)
end

end