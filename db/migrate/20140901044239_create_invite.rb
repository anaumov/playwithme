class CreateInvite < ActiveRecord::Migration
  def change
    create_table :invites do |t|
      t.string :state
      t.belongs_to :sender, null: false
      t.belongs_to :receiver, null: false
      t.belongs_to :jam, null: false
      t.timestamps
    end

    add_index :invites, :sender_id
    add_index :invites, :receiver_id
    add_index :invites, :jam_id
  end
end
