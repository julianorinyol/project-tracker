require 'rails_helper'

RSpec.describe Student, type: :model do

  
  # #*********************************Validations**********************************************************# 

  it { is_expected.to validate_presence_of :uid }
  it { is_expected.to validate_presence_of :name }
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
  it { is_expected.to have_and_belong_to_many(:projects) }

  # has_and_belongs_to_many :projects
  # has_many :milestones, through: :projects

  # #*********************************Methods**********************************************************# 

  describe ".create_with_omniauth" do
    it "creates a user and sets its values correctly" do
      auth = {"provider" =>  "facebook","uid" => "123jhdfakb" ,"info" =>  {"name"=> "Bob Bobberson"}}

      student = Student.create_with_omniauth(auth)

      expect(student.name).to eq "Bob Bobberson"
      expect(student.uid).to eq "123jhdfakb"
      expect(student.provider).to eq "facebook"
    end

  end

end
