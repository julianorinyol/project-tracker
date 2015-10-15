FactoryGirl.define do
  factory :project do
    name { Faker::Lorem.words(rand(3)+1).join(' ') }
    description { Faker::Lorem.words(rand(10)+1).join(' ') }
    organization { Organization.offset(rand(Organization.count)).first || create(:organization) }    
  end
  #  create_table "projects", force: :cascade do |t|
  #   t.datetime "created_at",      null: false
  #   t.datetime "updated_at",      null: false
  #   t.integer  "organization_id"
  #   t.string   "name"
  #   t.string   "description"
  # end
  
end
