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

  has_many  :jams
  has_and_belongs_to_many :jams, join_table: :jams_users

end
