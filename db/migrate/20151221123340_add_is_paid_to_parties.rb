class AddIsPaidToParties < ActiveRecord::Migration
  def change
    add_column :parties, :is_paid, :boolean, :default => true
  end
end
