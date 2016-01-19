class AddEuroColumnToParties < ActiveRecord::Migration
  def change
    add_column :parties, :euro, :boolean, :default => false
  end
end
