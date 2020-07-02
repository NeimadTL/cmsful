class UserAttribute < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :required, presence: true
  validates :type, presence: true

end
