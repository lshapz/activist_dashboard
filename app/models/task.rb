class Task < ApplicationRecord
  has_many :user_tasks 
  has_many :users, through: :user_tasks
  belongs_to :issue


  # def finishers  
  #   done_array = UserTask.where(task_id: self.id, completed: true).to_a
  #   done_tasks = done_array.map do |user_task|
  #     User.find(user_task.user_id)
  #   end 
  # end 

  # def will_do 
  # undone_array = UserTask.where(task_id: self.id, completed: false).to_a
  #   undone_tasks = undone_array.map do |user_task|
  #     User.find(user_task.user_id)
  #   end 
  # end 

  # def completed_count
  #   self.finishers.length 
  # end 



end
