ActiveAdmin.register Task do
  permit_params :subject_id, :name, :length, :description, :content
end
