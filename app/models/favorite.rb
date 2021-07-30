class Favorite < ApplicationRecord
  validates :anime_id, uniqueness: true
  belongs_to :anime
  belongs_to :user
end
