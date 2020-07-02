class User < ApplicationRecord

  validates :admin, presence: true
  
end
