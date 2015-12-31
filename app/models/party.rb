class Party < ActiveRecord::Base
  has_many :orders
  has_many :items, through: :orders


  # def total
  #   total = 0
  #   newtotal = order.subtotal
  #   newtotal.each do |i|
  #     total += newtotal
  #   end
  # end

  def total
   total = 0
   self.orders.each do |order|
     total += order.subtotal
   end
   return total
  end


end
