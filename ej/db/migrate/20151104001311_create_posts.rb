class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string "headline"
      t.text "draft1"
      t.text "draft2"
      t.integer "user_id"
      t.integer "assignment_id"
      t.boolean "bookmarked", null: false
      t.timestamps null: false
    end
  end
end
