class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string  :title
      t.text    :description
      t.datetime  :draft_deadline
      t.datetime  :final_deadline
      t.timestamps null: false
    end
  end
end
