# Feature: Employer create milestone
#   As an employer
#   I want to create a milestone
#   So I can know when a guage progress of a project
feature 'Employer creates a project', :omniauth do

  # Scenario: Employer can create milestonne
  #   Given I'm logged in as an Employer
  #   When I visit a project's page
  #   And I click "Add Milestone"
  #   Then I should see a form to create a milestone
  #   When I submit the form
  #   The I see the milestone on the projects page

  scenario "Employer can create milestone" do
    login_and_select_role 'Employer'
    o=create(:organization, employer_id: Employer.first.id)
    p=create(:project, organization_id: o.id)
    # click_link("Projects")

    # find_all(".project-row").sample.find(".show-link").click


    visit "/projects/" + p.id.to_s
    click_link("Add Milestone")
    expect(page).to have_css("#new_milestone")
    fill_in :milestone_requirement, with: "get lotsa stuff done yo"
    select "unstarted", from: "milestone_status" 
    select Time.now, from: "milestone_due_date"
    click_on "Create Milestone"

    expect(page).to have_content "get lotsa stuff done yo"
  end
end


