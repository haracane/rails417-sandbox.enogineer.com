require 'rails_helper'

describe Blog::Post, type: :model do
  subject { build(:blog_post) }

  context 'with FactoryGirl' do
    it { should create_model }
    it { should create_model.for(2).times }
  end

  context 'with associations' do
    it { should belong_to(:user) }
  end

  context 'with validations' do
    it { should validate_presence_of(:user_id) }
    it { should validate_presence_of(:permalink) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:content) }

    it { should ensure_length_of(:permalink).is_at_most(64) }
    it { should ensure_length_of(:title).is_at_most(128) }

    it { should safely_validate_uniqueness_of(:permalink) }
  end

  context 'with DB' do
    it { should have_not_null_constraint_on(:user_id) }
    it { should have_not_null_constraint_on(:permalink) }
    it { should have_not_null_constraint_on(:title) }
    it { should have_not_null_constraint_on(:content) }

    it { should have_unique_constraint_on(:permalink) }

    it { should have_foreign_key_constraint_on(:user_id) }
  end
end
