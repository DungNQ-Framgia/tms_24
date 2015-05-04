FactoryGirl.define do 
  password = "password"

  factory :user do |user| 
    user.name {Faker::Name.name}
    user.email {Faker::Internet.email}
    user.password password
    user.encrypted_password User.new(:password => password).encrypted_password
    user.role 0
  end 
end