class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy, :changestatus]

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
    @review = Review.new
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = Lesson.new(lesson_params)
    @lesson.student = current_user
    @lesson.notion = Notion.find(params[:lesson][:notion_id])
    if @lesson.save
      redirect_to lesson_path(@lesson)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @lesson[:status] = 'pending'
    @lesson.update(lesson_params)
    redirect_to lesson_path(@lesson)
  end

  def destroy
  end

  def changestatus
    params[:status] == "accepted" ? @lesson.status = "accepted" : @lesson.status = "refused"
    @lesson.save
    redirect_to lesson_path(@lesson)
  end

  private

  def lesson_params
    params.require(:lesson).permit(:date, :comment, :status, :teacher_id, :notion_id)
  end

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end
end
