class ListsController < ApplicationController

  def index
    @lists = Wishlist.all
  end

  def show
    @list = Wishlist.find(params[:id])
  end

  def new
    @list = Wishlist.new
  end

  def create
    wishlist = Wishlist.create(params[:wishlist])
    redirect_to wishlist_path(wishlist.id)
  end

end