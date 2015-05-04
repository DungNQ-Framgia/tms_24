ActiveAdmin.register UserSubject do
  permit_params :subject_id, :user_course_id, :status
end
