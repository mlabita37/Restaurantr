class Party < ActiveRecord::Base
  has_many :orders
  has_many :items, through: :orders


  def total
    total = 0
    newtotal = order.subtotal
    newtotal.each do |i|
      total += newtotal
    end
  end


end
