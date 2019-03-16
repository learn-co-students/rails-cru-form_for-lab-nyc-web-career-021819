class Genre < ActiveRecord::Base
  has_many :song
  has_many :artists, through: :songs 
end
