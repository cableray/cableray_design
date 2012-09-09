
FactoryGirl.define do
  factory :project, :class => Refinery::Projects::Project do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

