ActiveAdmin.register UserTask do
  permit_params :task_id, :user_subject_id, :status
end
