class CreateBlogUsers < ActiveRecord::Migration
  def change
    create_table :blog_users do |t|
      t.string :name, presence: true, limit: 32
      t.text :profile, presence: true

      t.timestamps
    end

    add_index :blog_users, :name, unique: true
  end
end
