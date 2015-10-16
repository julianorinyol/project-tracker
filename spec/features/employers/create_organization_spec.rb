# Feature: Employers create organization
#   As a employer
#   I want to create organizations
#   So I can get projects done for my organization
feature 'Employer creates an organization', :omniauth do

  # Scenario: Employer can create organization
  #   Given I'm logged in as an Employer
  #   When I visit the organizations page 
  #   And I click create organization
  #   Then I should see a create organization form
  #   When I submit the form
  #   The I see my new organizations show page 

  scenario "Employer can create organization" do
    login_and_select_role 'Employer'
    click_link("Organizations")
    click_link("Add New Organization")
    
    expect(page).to have_css("#new_organization")
    fill_in :organization_name, with: "new Name"
    fill_in :organization_description, with: "description is this"
    fill_in :organization_contact_email, with: "bla@bla.bla"

    click_on "Create Organization"

    expect(/(organizations)\/[0-9]+/).to match(current_path)

    expect(page).to have_link "Edit"
  end
end


