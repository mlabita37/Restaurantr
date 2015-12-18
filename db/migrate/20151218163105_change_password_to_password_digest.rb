class ChangePasswordToPasswordDigest < ActiveRecord::Migration
  def self.up
    rename_column :admins, :password, :password_digest
  end

  def self.down
    rename_column :admins, :password_digest, :password
  end

end
