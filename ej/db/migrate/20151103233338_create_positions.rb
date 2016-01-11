class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string   :title
      t.integer :assignment_id
      t.timestamps null: false
    end
  end
end
