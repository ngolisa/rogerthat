class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # @review.lesson = @lesson
   if @review.save
    redirect_to review_path(@review)
  end
end

  private

  def review_params
    params.require(:review).permit(:rating, :comment, :lesson_id)
  end
end
