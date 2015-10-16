FactoryGirl.define do
  factory :organization do
    name { Faker::Lorem.words(rand(3)+1).join(' ') }
    description { Faker::Lorem.words(rand(10)+1).join(' ') }
    employer { Employer.offset(rand(Employer.count)).first || create(:employer) }  
    contact_email { Faker::Lorem.words(rand(3)+1).join('') + "@bla.com" }
  end
end

  # create_table "organizations", force: :cascade do |t|
  #   t.datetime "created_at",    null: false
  #   t.datetime "updated_at",    null: false
  #   t.integer  "employer_id"
  #   t.string   "name"
  #   t.string   "description"
  #   t.string   "contact_email"
  # end
