ActiveAdmin.register UserCourse do
  permit_params :course_id, :user_id, :status
end
