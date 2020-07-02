class UserAtrributeValue < ApplicationRecord

  validates :value, presence: true
  validates_presence_of :user_attribute
  validates_presence_of :user

  belongs_to :user_attribute
  belongs_to :user

end
