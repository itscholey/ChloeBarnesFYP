class DeviseAddUsername < ActiveRecord::Migration
  def self.up
    add_column :users, :username, :string
  end

end
