class Anime < ApplicationRecord
   scope :categorized, -> (category) { where("category LIKE ?",  "#{category}" ) }
  
    has_many :favorites
end
