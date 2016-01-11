class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :content
      t.integer :post_id
      t.integer :user_id
      t.integer :assignment_id
      t.timestamps null: false
    end
  end
end
