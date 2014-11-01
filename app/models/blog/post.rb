class Blog::Post < ActiveRecord::Base
  belongs_to :user

  validates :user_id, presence: true
  validates :permalink, presence: true, uniqueness: true, length: {maximum: 64}
  validates :title, presence: true, length: {maximum: 128}
  validates :content, presence: true
end
