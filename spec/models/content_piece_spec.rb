require 'rails_helper'

RSpec.describe ContentPiece, type: :model do

  # #*********************************Validations**********************************************************# 

  
  it { is_expected.to validate_presence_of :project_id }
  it { is_expected.to validate_presence_of :text }

    # create_table "content_pieces", force: :cascade do |t|
    # t.integer  "project_id"
    # t.string   "text"
    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false

  # #*********************************Associations**********************************************************# 

  it { is_expected.to belong_to(:project) }       

  # belongs_to :project

  # #*********************************Methods**********************************************************# 
end
