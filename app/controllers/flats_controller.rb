class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  def admin
    @flats = Flat.all
  end

  def new
    @flats = Flat.new
  end

  def create
    @flats = Flat.new(flat_params)
    @flats.save
    redirect_to flats_path(@flats)
  end

  def edit
    @flats = Flat.find(params[:id])
  end

  def update
    @flats = Flat.find(params[:id])
    @flats.update(flat_params)
    redirect_to flats_path(@flats)
  end

  def destroy
    @flats = Flat.find(params[:id])
    @flats.destroy
    redirect_to admin_flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
