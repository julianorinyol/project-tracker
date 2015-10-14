class Milestone < ActiveRecord::Base
  belongs_to :project

  validates :requirement, :due_date, :status, :project_id, presence: true
end
