class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  def index
    if current_user.teacher
      @lessons = Lesson.where(teacher: current_user)
        .select { |r| r.date > DateTime.now }
      @passed_lessons = Lesson.where(teacher: current_user)
        .select { |r| r.date <= DateTime.now }
    else
      @lessons = Lesson.where(student: current_user)
        .select { |r| r.date > DateTime.now }
      @passed_lessons = Lesson.where(student: current_user)
        .select { |r| r.date <= DateTime.now }
    end
  end

  def show
  end

  def new
    @lesson = Lesson.new
  end

  def create
    unless current_user.teacher
      @lesson = Lesson.new(lesson_params)
      @lesson.student = current_user
      if @lesson.save
        redirect_to lesson_path(@lesson)
      else
        render 'new'
      end
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
    params.require(:lesson).permit(:date, :comment, :completed, :teacher)
  end

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end
end
