require 'rails_helper'

RSpec.describe Organization, type: :model do
# #*********************************Validations**********************************************************# 

  
  it { is_expected.to validate_presence_of :employer_id }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :description }
  it { is_expected.to validate_presence_of :contact_email }


  # create_table "organizations", force: :cascade do |t|
  #   t.datetime "created_at",    null: false
  #   t.datetime "updated_at",    null: false
  #   t.integer  "employer_id"
  #   t.string   "name"
  #   t.string   "description"
  #   t.string   "contact_email"
  # end

  # #*********************************Associations**********************************************************# 

  it { is_expected.to belong_to(:employer) }       
  it { is_expected.to have_many(:projects) }       


   # belongs_to :employer
   # has_many :projects

  # #*********************************Methods**********************************************************# 
end
