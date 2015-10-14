require 'rails_helper'

RSpec.describe Student, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  
  # #*********************************Validations**********************************************************# 
  it { is_expected.to validate_presence_of :uid }
  it { is_expected.to validate_presence_of :name }
  it { is_expected.to validate_presence_of :type }
  it { is_expected.to validate_presence_of :provider }



  # create_table "users", force: :cascade do |t|
  #   t.string   "name"
  #   t.string   "provider"
  #   t.string   "uid"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.integer  "role"
  #   t.string   "type"
  # end

  # #*********************************Associations**********************************************************# 

  it { is_expected.to have_many(:milestones) }                                                                                                              
  it { is_expected.to have_many(:content_pieces) }
  it { is_expected.to have_and_belong_to_many(:projects) }

  # has_and_belongs_to_many :projects
  # has_many :milestones, through: :projects
  # has_many :content_pieces

end
