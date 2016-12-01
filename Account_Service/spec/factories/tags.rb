FactoryGirl.define do
  factory :tag do
    name {"Ruby "+unique_anti_collision_string}
  end
end
