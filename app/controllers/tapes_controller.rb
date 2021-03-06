class TapesController < ApplicationController
require 'rqrcode'

def qrcode
  @qr = RQRCode::QRCode.new('hello world')
end

def index
  @tapes = Tape.all
end

def new
  @tape = Tape.new
end

def show
  @tape = Tape.find(params[:id])
  @qr = RQRCode::QRCode.new('tmstapelibrary.herokuapp.com/tapes/'+@tape.id.to_s)
end

def edit
  @tape = Tape.find(params[:id])
end

def create
  @tape = Tape.new(tape_params)
  if @tape.save
    flash[:success] = "Tape has been added to the library."
    redirect_to tapes_path(@tape)
  else
    render 'new'
  end
end

def update
  @tape = Tape.find(params[:id])
  if @tape.update(tape_params)
    flash[:success] = "Tape has been successfully updated."
    redirect_to tapes_path(@tape)
  else
    render 'edit'
  end
end

def destroy
end

private

def tape_params
  params.require(:tape).permit(:name,:format,:description,:location_id,show_ids:[])
end

end