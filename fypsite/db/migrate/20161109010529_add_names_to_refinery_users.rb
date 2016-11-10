class AddNamesToRefineryUsers < ActiveRecord::Migration
  def change
    add_column :refinery_authentication_devise_users, :forename, :string
    add_column :refinery_authentication_devise_users, :surname, :string
  end
end
