class CreateSprints < ActiveRecord::Migration[5.0]
  def change
    create_table :sprints do |t|
      t.integer :number
      t.date :date
      t.boolean :status
      t.integer :hours
      t.integer :tasks_committed
      t.integer :tasks_added
      t.integer :tasks_removed
      t.integer :tasks_completed
      t.integer :points_committed
      t.integer :points_added
      t.integer :points_removed
      t.integer :points_completed
      t.integer :bugs
      t.timestamps
    end
  end
end
