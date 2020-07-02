class User < ApplicationRecord

  validates :admin, presence: true

  has_many :user_attribute_values
  has_many :fields, through: :user_attribute_values, class_name: "UserAttribute"

end
