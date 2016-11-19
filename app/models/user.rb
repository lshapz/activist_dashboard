class User < ApplicationRecord
  has_secure_password
  has_many :user_tasks 
  has_many :tasks, through: :user_tasks

  def my_created_tasks 
    my_tasks = Task.where(creator_user_id: self.id).to_a
  end 

  def my_completed_tasks
    done_array = UserTask.where(user_id: self.id, completed: true).to_a
    done_tasks = done_array.map do |user_task|
      Task.find(user_task.task_id)
    end 
  end 

  def my_todo_list
    undone_array = UserTask.where(user_id: self.id, completed: false).to_a
    undone_tasks = undone_array.map do |user_task|
      Task.find(user_task.task_id)
    end 
  end 

end
