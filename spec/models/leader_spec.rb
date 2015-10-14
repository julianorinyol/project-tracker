require 'rails_helper'

RSpec.describe Leader, type: :model do
  
#*********************************Validations**********************************************************# 

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

#*********************************Associations**********************************************************# 

  it { is_expected.to have_many(:organizations) }                                           

  # has_many :organizations

end
