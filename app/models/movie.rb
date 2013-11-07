class Movie < ActiveRecord::Base
  has_many :reviews

  def average_rating
     reviews.average(:rating)
  end
end
