class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :username
      t.string :password
      t.string :firstname
      t.string :lastname
      t.text :address1
      t.text :address2
      t.string :city
      t.string :state
      t.integer :zip
      t.integer :phone_number
      t.integer :dob
      t.string :job_title
      t.boolean :is_admin, default: false

      t.timestamps null: false
    end
  end
end
