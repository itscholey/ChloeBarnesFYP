class UsersMeetings < ActiveRecord::Migration
  def change
    create_table :users_meetings do |t|
      t.integer :user_id, null:false
      t.integer :meeting_id, null: false
    end
  end
end
