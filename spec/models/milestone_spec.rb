require 'rails_helper'

RSpec.describe Milestone, type: :model do
# #*********************************Validations**********************************************************# 

  
  it { is_expected.to validate_presence_of :requirement }
  it { is_expected.to validate_presence_of :due_date }
  it { is_expected.to validate_presence_of :status }
  it { is_expected.to validate_presence_of :project_id }


  # create_table "milestones", force: :cascade do |t|
  #   t.string   "requirement"
  #   t.datetime "due_date"
  #   t.string   "status"
  #   t.integer  "project_id"
  #   t.datetime "created_at",  null: false
  #   t.datetime "updated_at",  null: false
  # end

  # #*********************************Associations**********************************************************# 

  it { is_expected.to belong_to(:project) }       

  # belongs_to :project

  # #*********************************Methods**********************************************************# 
end
