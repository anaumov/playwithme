class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :avatar, AvatarUploader

  include Authority::UserAbilities

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :login, :email, presence: true
  validates :login, length: { minimum: 2 }, uniqueness: true

  has_many  :own_jams, class_name: "Jam", foreign_key: "owner_id"
  has_and_belongs_to_many :jams, join_table: :jams_users

  has_many :income_invites, class_name: "Invite", foreign_key: "receiver_id"
  has_many :outcome_invites, class_name: "Invite", foreign_key: "sender_id"

  def unaccepted_invite_for jam
    Invite.user_new_invite_in_jam(jam, self).last
  end

end
