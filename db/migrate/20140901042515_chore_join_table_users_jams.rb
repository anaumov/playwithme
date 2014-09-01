class ChoreJoinTableUsersJams < ActiveRecord::Migration
  def change
    drop_table :jams_users

    create_table :jams_users, id: false do |t|
      t.integer  :jam_id
      t.integer  :user_id
    end

    add_index :jams_users, [:jam_id, :user_id]
  end
end
