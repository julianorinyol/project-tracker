# Feature: Leaders browse organizations
#   As a leader
#   I want to browse organizations
#   So I can see a list of my orgs and all orgs..
feature 'Leader browsing organizations', :omniauth do

  # Scenario: Leader can browse organizations
  #   Given I have a valid account, with type Leader\
  #   And there are 5 organizations 2 of which are mine
  #   When I sign in
  #   Then I see a list of 2 organizations and another list of 3 organizations
  scenario "Leader can browse organizations" do
    # create_x_many_objects(2, 'organization')
    #also creates 1 organization and 1 leader
    # binding.pry
    login_and_select_role 'Leader'
    create_x_many_objects(3, 'organization')
    l=create(:leader)
    create(:organization, leader: l)
    create(:organization, leader: l)
    click_link("Organizations")
    binding.pry

    my_orgs = find_all(".my-org-row")
    other_orgs = find_all(".other-org-row")

    expect(my_orgs.size).to eq 3
    expect(other_orgs.size).to eq 2
    expect(Organization.count).to eq 5

    # expect(has_content? "New Project").to be false

  end
end
