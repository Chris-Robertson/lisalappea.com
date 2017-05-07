class CategoriesController < ApplicationController
  def index
    @items = Item.all
    @categories = []
    @items.each do |item|
      unless @categories.include? item.category
        @categories << item.category
      end
    end
  end
end
