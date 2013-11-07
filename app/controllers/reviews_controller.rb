class ReviewsController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    @review = @movie.reviews.create(params[:review].permit(:reviewer, :body, :rating))
    redirect_to movie_url(@movie)
  end

end
