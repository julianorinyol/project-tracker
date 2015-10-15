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
  scenario "Leader visits page of own org" do
    login_and_select_role 'Leader'
    create_x_many_objects(3, 'organization')
    l=create(:leader)
    create(:organization, leader: l)
    create(:organization, leader: l)
    click_link("Organizations")

    my_org = find_all(".my-org-row").sample.find(".show-link").click
    expect(/(organizations)\/[0-9]+/).to match(current_path)

    expect(page).to have_link "Edit"

  end
  scenario "Leader visits page of someone else's org" do
    login_and_select_role 'Leader'
    create_x_many_objects(3, 'organization')
    l=create(:leader)
    create(:organization, leader: l)
    create(:organization, leader: l)
    click_link("Organizations")

    other_orgs = find_all(".other-org-row").sample.find(".show-link").click

    expect(/(organizations)\/[0-9]+/).to match(current_path)
    expect(page).not_to have_link "Edit"
  end

end
