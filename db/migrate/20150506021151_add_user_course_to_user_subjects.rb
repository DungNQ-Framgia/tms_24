class AddUserCourseToUserSubjects < ActiveRecord::Migration
  def change
  	remove_reference :user_subjects, :user, index: true
    add_reference :user_subjects, :user_course, index: true
    remove_foreign_key :users
    add_foreign_key :user_subjects, :user_courses
  end
end
