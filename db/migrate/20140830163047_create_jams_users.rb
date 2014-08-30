class CreateJamsUsers < ActiveRecord::Migration
  def change
    create_table :jams_users, id: false do |t|
      t.integer  :jams_id
      t.integer  :users_id
    end

    add_index :jams_users, [:jams_id, :users_id]
  end
end
