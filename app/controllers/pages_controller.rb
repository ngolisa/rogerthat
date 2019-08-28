class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def design
  end

  def dashboard
    @user = current_user
    @next_lessons = Lesson.filter_by_student(current_user.id).filter_by_date
  end
end
