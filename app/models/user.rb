class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :login, :email, :password, :password_confirmation, presence: true
  validates :login, length: { minimum: 2 }, uniqueness: true
  validates :email, uniqueness: true
  validates :password, length: { minimum: 6 }
  validates :password, confirmation: true

  has_many  :own_jams, class_name: "Jam", foreign_key: "owner_id"
  has_and_belongs_to_many :jams, join_table: :jams_users

  has_many :income_invites, class_name: "Invite", foreign_key: "receiver_id"
  has_many :outcome_invites, class_name: "Invite", foreign_key: "sender_id"

end
