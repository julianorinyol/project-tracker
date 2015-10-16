FactoryGirl.define do
  factory :milestone do
    requirement { Faker::Lorem.words(rand(3)+1).join(' ') }
    due_date { Time.now + 20.days }
    status { "unstarted" }
    project { Project.offset(rand(Project.count)).first || create(:project) } 
  end
end

  # factory :project do
  #   name { Faker::Lorem.words(rand(3)+1).join(' ') }
  #   description { Faker::Lorem.words(rand(10)+1).join(' ') }
  #   organization { Organization.offset(rand(Organization.count)).first || create(:organization) }    
  # end

  # create_table "milestones", force: :cascade do |t|
  #   t.string   "requirement"
  #   t.datetime "due_date"
  #   t.string   "status"
  #   t.integer  "project_id"
  #   t.datetime "created_at",  null: false
  #   t.datetime "updated_at",  null: false
  # end