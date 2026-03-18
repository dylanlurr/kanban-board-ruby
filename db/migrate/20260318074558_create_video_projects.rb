class CreateVideoProjects < ActiveRecord::Migration[8.1]
  def change
    create_table :video_projects do |t|
      t.string :title
      t.string :status
      t.date :target_date
      t.string :category

      t.timestamps
    end
  end
end
