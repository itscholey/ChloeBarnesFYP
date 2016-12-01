class UsersMessages < ActiveRecord::Migration
  def change
    create_table :users_messages do |t|
      t.integer :user_id, null:false
      t.integer :message_id, null: false
    end 
  end
end
