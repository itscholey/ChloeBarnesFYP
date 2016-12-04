class CreateMessageRecipients < ActiveRecord::Migration
  def up
    create_table :message_recipients do |t|
      t.integer :meeting_id
      t.integer :user_id
      t.timestamps null: false
    end

    drop_table :users_messages
  end

  def down
    drop_table :message_recipients
  end
end
