class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :sender
      t.string :recipient
      t.string :subject
      t.text :body
      t.timestamp :details
      t.boolean :read

      t.timestamps null: false
    end
  end
end
