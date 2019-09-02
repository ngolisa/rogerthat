class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def design
  end

  def dashboard
    @user = current_user

    # @next_lessons = Lesson.filter_by_student(current_user.id).upcoming.reverse
    # @next_lessonsT = Lesson.filter_by_teacher(current_user.id).upcoming.reverse
    # @next_notion = @next_lessons.first.notion
    # @next_notionT = @next_lessonsT.first.notion

    # @past_lessons = Lesson.filter_by_student(current_user.id).past.reverse
    # @past_lessonsT = Lesson.filter_by_teacher(current_user.id).past.reverse
    # @previous_notion = @past_lessons.first.notion
    # @previous_notionT = @past_lessonsT.first.notion
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
