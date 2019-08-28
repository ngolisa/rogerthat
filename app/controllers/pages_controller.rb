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

    @all_upcoming_lessons = Lesson.filter_by_student_or_teacher(current_user.id).upcoming.reverse
    @all_past_lessons = Lesson.filter_by_student_or_teacher(current_user.id).past.reverse
    @all_lessons_upcoming_notion = @all_upcoming_lessons.notion
    @all_lessons_past_notion = @all_past_lessons.first.notion
  end
end
