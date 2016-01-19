class ReAddEmployeesDobAsDate < ActiveRecord::Migration
  def up
     add_column :employees, :dob, :date
   end

   def down
     remove_column :employees, :dob
   end
end
