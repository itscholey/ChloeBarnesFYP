class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :subject
      t.datetime :date_and_time
      t.string :location
      t.text :agenda

      t.timestamps null: false
    end
  end
end
