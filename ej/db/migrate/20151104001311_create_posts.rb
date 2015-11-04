class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string "headline"
      t.text "draft1"
      t.text "draft2"
      t.timestamps null: false
    end
  end
end
