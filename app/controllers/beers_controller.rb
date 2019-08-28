class BeersController < ApplicationController
  before_action :set_beer, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token, only: [:get_barcode]

  def index
    @scan = Scan.new
    if params[:query].present?
      @beers = Beer.search_by_name(params[:query])
    else
      @beers = Beer.all
    end
  end

  def show
    @glass = @beer.glass
  end

  def new
  end

  def get_barcode
    @beer = Beer.find_by(upc: params[:upc])
    if @beer
      redirect_to beer_path(@beer)
    else
      redirect_to new_beer_path(upc: params[:upc])
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_beer
    @beer = Beer.find(params[:id])
    @scan = Scan.new
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def beer_params
    params.require(:beer).permit(:name, :upc, :image_url, :photo)
  end

end
