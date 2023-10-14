class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.integer :status
      t.date :start_date
      t.date :end_date
      t.integer :progress

      t.timestamps
    end
  end
end
