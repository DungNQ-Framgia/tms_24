FactoryGirl.define do 
  factory :user_course do |user_course|
    user
    course
    user_course.status 0
  end 
end