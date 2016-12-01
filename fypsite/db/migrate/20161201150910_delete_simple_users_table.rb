class DeleteSimpleUsersTable < ActiveRecord::Migration
  def up
    drop_table :simple_users
  end

  def down
    create_table :simple_users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email

      t.timestamps null: false
    end
  end
end
