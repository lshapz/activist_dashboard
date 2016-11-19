class CreateIssueTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :issue_tasks do |t|
      t.integer :task_id
      t.integer :issue_id

      t.timestamps
    end
  end
end
