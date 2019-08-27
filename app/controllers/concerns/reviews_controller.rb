class ReviewsController < ApplicationController
  def new
    @notion = Notion.find(params[:notion_id])
    @review = Review.new
  end
end

def create
    @review = Review.new(review_params)
    @notion = Notion.find(params[:notion_id])
    @review.notion = @notion
    @review.save
    redirect_to notion_path(@notion)
  end

  private
  def review_params
    params.require(:review).permit(:content)
  end
