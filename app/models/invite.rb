class Invite < ActiveRecord::Base

  validates :sender, :receiver, :jam, presence: true

  belongs_to :sender, class_name: "User"
  belongs_to :receiver, class_name: "User"
  belongs_to :jam, class_name: "Jam"

  state_machine :state, initial: :new do
    state :new
    state :accepted
    state :rejected

    event :accept do
      transition :new => :accepted
    end

    event :reject do
      transition :new => :rejected
    end
  end
end