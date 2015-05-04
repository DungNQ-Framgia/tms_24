class AddUserSubjectToUserTasks < ActiveRecord::Migration
  def change
  	remove_reference :user_tasks, :user, index: true
    add_reference :user_tasks, :user_subject, index: true
    remove_foreign_key :users
    add_foreign_key :user_tasks, :user_subjects
  end
end
