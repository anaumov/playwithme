class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :full_name, :string
    add_column :users, :website, :string
    add_column :users, :public_email, :string
    add_column :users, :location, :string
    add_column :users, :avatar, :string
  end
end
