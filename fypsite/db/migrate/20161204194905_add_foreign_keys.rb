class AddForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :messages, :users, name: :sender_id

    add_foreign_key :meetings, :users, name: :organiser

    add_foreign_key :meeting_attendees, :users
    add_foreign_key :meeting_attendees, :meetings

    add_foreign_key :message_recipients, :users
    add_foreign_key :message_recipients, :messages 
  end
end
