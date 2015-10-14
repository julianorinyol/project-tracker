class Organization < ActiveRecord::Base
  belongs_to :leader
  has_many :projects

  validates :leader_id, :name, :description, :contact_email, presence: true

end
