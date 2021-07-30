class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true
  validates :email, presence: true
  has_many :favorites
  has_many :watches

end
