class Task < ApplicationRecord
  belongs_to :project
    
  validates :title, presence: true, length: {maximum: 50}
  validates :project, presence: true
  validates :video, presence: true
  validates :tag, presence: true   
end
