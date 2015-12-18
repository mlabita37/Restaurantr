class Order < ActiveRecord::Base
  belongs_to :party_id
  belongs_to :item_id
end
