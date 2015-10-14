class Project < ActiveRecord::Base
  has_and_belongs_to_many :students
  belongs_to :organization
  has_many :milestones
  has_many :content_pieces

  validates :description, :name, :organization_id, presence: true
end
