class RemoveRatingFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :rating, :integer
  end
end
