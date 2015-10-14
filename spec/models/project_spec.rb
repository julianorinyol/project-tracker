require 'rails_helper'

RSpec.describe Project, type: :model do



  # #*********************************Validations**********************************************************# 
  it { is_expected.to validate_presence_of :organization_id }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :description }



  #     create_table "projects", force: :cascade do |t|
  #   t.datetime "created_at",      null: false
  #   t.datetime "updated_at",      null: false
  #   t.integer  "organization_id"
  # end

  # #*********************************Associations**********************************************************# 

  it { is_expected.to belong_to(:organization) }
  it { is_expected.to have_many(:milestones) }                                                                                                                
  it { is_expected.to have_many(:content_pieces) }
  it { is_expected.to have_and_belong_to_many(:students) }



end
