class UserAttribute < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :required, presence: true
  validates :type, presence: true

  has_many :user_attribute_values
  has_many :users, through: :user_attribute_values

end
