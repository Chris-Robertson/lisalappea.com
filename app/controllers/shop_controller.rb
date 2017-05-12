class ShopController < ApplicationController

  def index
    @items = Item.all
    @category = Item.find(params[:item]).category

    @category_items = []
    @items.each do |item|
      if item.category == @category
        @category_items << item
      end
    end
  end
end
