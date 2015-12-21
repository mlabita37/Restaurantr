class ChangePartyIsPaidBooleanToFalse < ActiveRecord::Migration
  def up
     change_column :parties, :is_paid, :boolean, :default => false
   end

   def down
     change_column :parties, :is_paid, :boolean, :default => true
   end
end
