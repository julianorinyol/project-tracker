FactoryGirl.define do
  factory :student do
    name { Faker::Name.first_name + " " + Faker::Name.last_name   } 
    provider {"twitter"}
    uid { "123abd"}
  end
end

# FactoryGirl.define do
#   factory :employer do
#     name { Faker::Name.first_name + " " + Faker::Name.last_name   } 
#     provider {"twitter"}
#     uid { "123abd"}
#   end
# end

