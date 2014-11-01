# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :blog_user, :class => 'Blog::User' do
    sequence(:name) { |n| "name_#{n}" }
    profile "MyText"
  end
end
