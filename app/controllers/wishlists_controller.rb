class WishlistsController < ApplicationController

  def index

    @books = Wishlist.new('Books', ['one', 'two', 'three'])
    @music = Wishlist.new('Music', ['one', 'two', 'three', 'four'])

  end

end