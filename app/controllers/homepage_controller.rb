class HomepageController < ApplicationController
  def index

  end

  def search
    @listing = Listing.find_by_address(params[:search_text])
    @listing = Listing.find_by_name(params[:search_text]) if !@listing

    @listing = Listing.find(params[:search_text]) if !@listing
    redirect_to @listing
  end

end
