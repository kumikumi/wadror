class RatingsController < ApplicationController
  def index
    @ratings = Rating.all
  end

  def new
    @rating = Rating.new
    @beers = Beer.all
  end

   def create
    @rating = Rating.new params.require(:rating).permit(:score, :beer_id)

    if not current_user.nil? and @rating.save
      current_user.ratings << @rating
      redirect_to user_path current_user
    else
      @beers = Beer.all
      redirect_to ratings_path, notice: 'Rating could not be created'
    end
  end

  def destroy
    rating = Rating.find(params[:id])
    rating.delete if current_user == rating.user
    redirect_to :back
  end

end


