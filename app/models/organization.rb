class Organization < ActiveRecord::Base
  belongs_to :employer
  has_many :projects

  validates :employer_id, :name, :description, :contact_email, presence: true

end
