FactoryGirl.define do
  factory :leader do
    name { Faker::Name.first_name + " " + Faker::Name.last_name   } 
    provider {"twitter"}
    uid { "123abd"}
  end
end

  # create_table "users", force: :cascade do |t|
  #   t.string   "name"
  #   t.string   "provider"
  #   t.string   "uid"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  #   t.integer  "role"
  #   t.string   "type"
  # end

# ***examples***

 # factory :evernote_user, class: User do
 #    firstname { Faker::Name.first_name } 
 #    lastname { Faker::Name.last_name }
 #    email { Faker::Internet.free_email("#{firstname} #{lastname}" ) }
 #    password "password" 
 #    password_confirmation "password"
 #    evernote_auth ENV["TEST_AUTH_TOKEN"]
 #    last_usn { 0 }
 #  end

  # factory :note do
  #   title { "notetitle: " + rand(1000).to_s }
  #   guid { "afsd" + rand(100000).to_s }
  #   user { User.offset(rand(User.count)).first || create(:user) }
  #   notebook { user.notebooks.empty? ? create(:notebook, user: user) : user.notebooks.sample }
  #   # User.joins(:notebooks).take(1)   --> gets a random user with a notebook
  #   notebook_guid { notebook.guid }
  #   sequence(:update_sequence_number) {|n| user.last_usn + n }
  #   public false    
  # end
