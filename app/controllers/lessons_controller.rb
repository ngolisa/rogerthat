class LessonsController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  def index
    @lessons = current_user.lessons
      .select { |r| r.date > DateTime.now }
    @oldlessons = current_user.lessons
      .select { |r| r.date <= DateTime.now }
  end

  def show
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    if @lesson.save
      redirect_to lesson_path(@lesson)
    else
      redirect_to lesson
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def lesson_params
    # => Whitelisting
    params.require(:lesson).permit(:date, :comment, :completed)
  end

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end
end
