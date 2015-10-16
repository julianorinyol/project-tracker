# Feature: Employer create project
#   As a employer
#   I want to create a project
#   So I can get work done in an organized fashion
feature 'Employer creates a project', :omniauth do

  # Scenario: Employer can create project
  #   Given I'm logged in as an Employer
  #   When I visit the  projects page
  #   And I click link "Add New Project"
  #   Then I should see a form to create project
  #   When I submit the form
  #   The I see my new project's show page 

  scenario "Employer can create project" do
    login_and_select_role 'Employer'
    o=create(:organization, employer_id: Employer.first.id)
    click_link("Projects")
    click_link("Add New Project")
    expect(page).to have_css("#new_project")
    fill_in :project_name, with: "new proj Name"
    fill_in :project_description, with: "proj description is this"

    
    select o.name,  from: "project_organization_id"
    click_on "Create Project"

    expect(/(projects)\/[0-9]+/).to match(current_path)

    expect(page).to have_link "Edit"

  end
end


