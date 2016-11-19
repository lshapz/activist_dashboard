class Task < ApplicationRecord
  has_many :user_tasks 
  has_many :tasks, through: :user_tasks
  belongs_to :issue
end
