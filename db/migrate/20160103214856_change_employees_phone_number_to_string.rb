class ChangeEmployeesPhoneNumberToString < ActiveRecord::Migration
  def up
     change_column :employees, :phone_number, :string
   end

   def down
     change_column :employees, :phone_number, :integer
   end
end
