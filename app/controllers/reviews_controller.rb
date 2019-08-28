class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.lesson = Lesson.find(params[:lesson_id])
  if @review.save
    redirect_to teacher_path(@review.lesson.teacher)
  else
    redirect_to lesson_path(@review.lesson)
  end
end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
