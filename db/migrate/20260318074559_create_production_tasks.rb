class CreateProductionTasks < ActiveRecord::Migration[8.1]
  def change
    create_table :production_tasks do |t|
      t.string :description
      t.boolean :completed
      t.references :video_project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
