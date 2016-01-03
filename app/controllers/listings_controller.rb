class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def create
    @listing = Listing.new(listing_params)

    @listing.save
    redirect_to @listing
  end

  def show
    @listing = Listing.find(params[:id])
  end



  private
  def listing_params
    params.require(:listing).permit(:name, :describe,:address,:beds, :rooms)
  end

end
