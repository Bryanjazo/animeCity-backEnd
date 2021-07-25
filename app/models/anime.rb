class Anime < ApplicationRecord
   scope :categorized, -> (category) { where("category LIKE ?",  "#{category}" ) }
    validates_uniqueness_of :id
end
