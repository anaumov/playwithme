class CreateJams < ActiveRecord::Migration
  def change
    create_table   :jams do |t|
      t.string     :title
      t.string     :state
      t.belongs_to :owner
      t.timestamps
    end

    add_index :jams, :owner_id
  end
end
