class CreateMeetingAttendees < ActiveRecord::Migration
  def up
    create_table :meeting_attendees do |t|
      t.integer :meeting_id
      t.integer :user_id

      t.timestamps null: false
    end

    drop_table :users_meetings
  end

  def down
    drop_table :meeting_attendees
  end
end
