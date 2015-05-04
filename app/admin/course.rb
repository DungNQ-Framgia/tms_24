ActiveAdmin.register Course do
  permit_params :name, :length, :description
end
