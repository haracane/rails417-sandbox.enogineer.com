# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :blog_post, class: 'Blog::Post' do
    sequence(:permalink) { |n| "permalink_#{n}" }
    title "title"
    content "content"

    after(:build) do |blog_post|
      blog_post.user ||= create(:blog_user)
    end
  end
end
