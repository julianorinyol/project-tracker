# Feature: Employers browse organizations
#   As a employer
#   I want to browse organizations
#   So I can see a list of my orgs and all orgs..
feature 'Employer browsing organizations', :omniauth do

  # Scenario: Employer can browse organizations
  #   Given I have a valid account, with type Employer\
  #   And there are 5 organizations 2 of which are mine
  #   When I sign in
  #   Then I see a list of 2 organizations and another list of 3 organizations
  scenario "Employer can browse organizations" do
    # create_x_many_objects(2, 'organization')
    #also creates 1 organization and 1 employer
    # binding.pry
    login_and_select_role 'Employer'
    create_x_many_objects(3, 'organization')
    l=create(:employer)
    create(:organization, employer: l)
    create(:organization, employer: l)
    click_link("Organizations")

    my_orgs = find_all(".my-org-row")
    other_orgs = find_all(".other-org-row")

    expect(my_orgs.size).to eq 3
    expect(other_orgs.size).to eq 2
    expect(Organization.count).to eq 5
  end
end
