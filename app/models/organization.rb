class Organization < ActiveRecord::Base
  belongs_to :leader
  has_many :projects
end
