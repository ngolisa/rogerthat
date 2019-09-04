class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def design
  end

  def test
  end

  def record
  end

  def dashboard
    @user = current_user


    @lessons = Lesson.filter_by_student_or_teacher(current_user.id)
    @all_upcoming_lessons = @lessons.upcoming.reverse

    if @lessons.upcoming.blank?
      @all_upcoming_lessons = []
    else
      @all_upcoming_lessons = @lessons.upcoming.where(student_id: current_user.id).reverse
    end

    if @lessons.past.blank?
      @all_past_lessons = []
    else
      @all_past_lessons = @lessons.past.where(student_id: current_user.id).reverse
    end
  end
end
