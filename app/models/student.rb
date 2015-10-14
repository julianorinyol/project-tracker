class Student < User
  has_and_belongs_to_many :projects
  has_many :milestones, through: :projects

end
