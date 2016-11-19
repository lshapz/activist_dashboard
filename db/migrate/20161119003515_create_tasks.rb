class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :todo
      t.string :resources
      t.integer :issue_id
      t.integer :creator_user_id

      t.timestamps
    end
  end
end
