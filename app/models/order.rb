class Order < ActiveRecord::Base
  belongs_to :party
  belongs_to :item


  def subtotal
    item.price * quantity
  end


end
