class FlatsController < ApplicationController
  before_action :set_flat, only: %i[show]

  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flats_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :price_per_night, :number_of_guests, :description)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
