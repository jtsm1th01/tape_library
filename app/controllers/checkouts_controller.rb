class CheckoutsController < ApplicationController

def index
  @checkouts = Checkout.all
end

def new
  @checkout = Checkout.new
end

def show
  @checkout = Checkout.find(params[:id])
end

def edit
  @checkout = Checkout.find(params[:id])
end

def create
  @checkout = Checkout.new(checkout_params)
  if @checkout.save
    flash[:success] = "Item has been checked out."
    redirect_to checkouts_path
  else
    render 'new'
  end
end

def destroy
  @checkout = Checkout.find(params[:id])
  if @checkout.destroy
    flash[:success] = "Item has been checked back in."
    redirect_to checkouts_path
  end
end

private

def checkout_params
  params.require(:checkout).permit(:location_id,:tape_id)
end

end
