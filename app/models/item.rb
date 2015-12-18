class Item < ActiveRecord::Base
  belongs_to :admin
  has_many :orders
end
