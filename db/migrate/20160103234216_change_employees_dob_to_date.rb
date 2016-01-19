class ChangeEmployeesDobToDate < ActiveRecord::Migration
  def up
     remove_column :employees, :dob
   end

   def down
     add_column :employees, :dob, :integer
   end
end
