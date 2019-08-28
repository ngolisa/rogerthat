class UsersController < ApplicationController
  def teachers
    @teachers = User.where(teacher: true)
  end

  def teacher
    @teacher = User.find(params[:id])
    @lessons = Lesson.where(teacher: @teacher)
    @reviews = @lessons.map { |lesson| lesson.reviews }.flatten
  end
end
