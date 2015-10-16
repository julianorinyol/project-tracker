FactoryGirl.define do
  factory :content_piece do
    project { Project.offset(rand(Project.count)).first || create(:project) } 
    text { Faker::Lorem.words(rand(3)+1).join(' ') }
  end
end

# FactoryGirl.define do
#   factory :milestone do
#     requirement { Faker::Lorem.words(rand(3)+1).join(' ') }
#     due_date { Time.now + 20.days }
#     status { "unstarted" }
#     project { Project.offset(rand(Project.count)).first || create(:project) } 
#   end
# end


  # create_table "content_pieces", force: :cascade do |t|
  #   t.integer  "project_id"
  #   t.string   "text"
  #   t.datetime "created_at",   null: false
  #   t.datetime "updated_at",   null: false
  #   t.integer  "milestone_id"
  # end