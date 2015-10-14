class ContentPiece < ActiveRecord::Base
  belongs_to :project

  validates :text, :project_id, presence: true
end
