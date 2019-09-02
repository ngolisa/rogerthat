class NotionsController < ApplicationController
  def index
    @notions = Notion.all
    @mynotions = Notion.where(user: current_user)
    @categories = Category.all
  end

  def show
    @notion = Notion.find(params[:id])
    @lesson = Lesson.new
  end

  def new
    @notion = Notion.new
  end

  def create
    @notion = Notion.new(notion_params)
    @notion.user = current_user
    if @notion.save
      redirect_to notion_path(@notion)
    else
      render 'new'
    end
  end

  def edit
    @notion = Notion.find(params[:id])
  end

  def update
    @notion = Notion.find(params[:id])
    if @notion.update(notion_params)
      redirect_to notion_path(@notion)
    else
      render 'update'
    end
  end

  def destroy
    @notion = Notion.find(params[:id])
    @notion.destroy
    redirect_to notions_path
  end

  private

  def notion_params
    params.require(:notion).permit(:name, :description, :video, :user_id, :photo)
  end
end
