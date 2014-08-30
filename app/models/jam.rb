class Jam < ActiveRecord::Base

  validates :title, presence: true

  belongs_to :owner, class_name: "User"
  has_and_belongs_to_many :users, join_table: :jams_users

end