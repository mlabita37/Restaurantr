class UpdateEmployeePasswordToPasswordDigest < ActiveRecord::Migration
  def self.up
    rename_column :employees, :password, :password_digest
  end

  def self.down
    rename_column :employees, :password_digest, :password
  end
end
