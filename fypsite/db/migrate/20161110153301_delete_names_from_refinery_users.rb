class DeleteNamesFromRefineryUsers < ActiveRecord::Migration
  def change
    remove_column :refinery_authentication_devise_users, :forename, :string
    remove_column :refinery_authentication_devise_users, :surname, :string
  end
end
