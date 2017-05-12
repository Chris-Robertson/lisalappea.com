class Item < ApplicationRecord
  belongs_to :user
  has_many :photos
  has_many :order_items

  default_scope { where(active: true) }
end
