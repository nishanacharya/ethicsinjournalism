class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string  "title"
      t.text    "description"
      t.text    "position1"
      t.text    "position2"
      t.text    "position3"
      t.text    "position4"
      t.datetime  "deadline"
      t.timestamps null: false
    end
  end
end
