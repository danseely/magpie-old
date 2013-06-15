class WishlistsController < ApplicationController

  def index

    @lists = Wishlist.all

  end

  def single

  end

end