class CategoriesController < ApplicationController
  def index
    @items = Item.all
    @items.order("RANDOM()")
    @categories = []
    @random_category_items = []
    @items.each do |item|
      unless @categories.include? item.category
        @categories << item.category
        @random_category_items << item
      end
    end
  end
end
