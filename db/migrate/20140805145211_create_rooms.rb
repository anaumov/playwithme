class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :user_id
      t.string :title
      t.timestamps
    end

    add_index :rooms, :user_id
  end
end
