class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)

    @review.lesson = Lesson.last
   if @review.save
    redirect_to reviews_path
  end
end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
