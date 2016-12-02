FactoryGirl.define do
  factory :organisation do
    login {Faker::Internet.user_name}
    email {Faker::Internet.email}
    password {Faker::Internet.password}
    last_name {Faker::Name.last_name}
    first_name {Faker::Name.first_name}
    role {0}
  end

end
