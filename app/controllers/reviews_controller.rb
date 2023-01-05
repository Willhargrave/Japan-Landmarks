class ReviewsController < ApplicationController
  def new
    @landmark = Landmark.find(params[:landmark_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @landmark = Landmark.find(params[:landmark_id])
    @review.landmark = @landmark
    if @review.save
      redirect_to landmark_path(@landmark)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating, :landmark_id)
  end
end
