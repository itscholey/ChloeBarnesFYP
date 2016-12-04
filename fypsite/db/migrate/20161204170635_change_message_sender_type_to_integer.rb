class ChangeMessageSenderTypeToInteger < ActiveRecord::Migration
  def up
    remove_column :messages, :sender
    add_column :messages, :sender_id, :integer
  end

  def down
    add_column :messages, :sender, :string
    remove_column :messages, :sender_id
  end
end
