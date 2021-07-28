class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true
  validates :email, presence: true
<<<<<<< HEAD
  
=======

>>>>>>> 3fc31c0fbe0fbce58c7149ceff329bb61138d402
  has_many :watches

end
