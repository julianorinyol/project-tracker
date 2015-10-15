# Feature: Join Project
#   As a student
#   I want to join a project
#   So I can submit content to it
feature 'Student join project', :omniauth do

  # Scenario: Signed in student can join a project
  #   Given I have a valid account
  #   And there are 5 projects
  #   And I am signed in
  #   And I am viewing a project
  #   When I click on "Join Project"
  #   Then I see a submit content form
  scenario "Signed in student can join a project" do
    
    create(:project)
    #also creates 1 organization and 1 leader

    login_and_select_role 'student'

    project = first(".project-row")
    project.find(".show-link").click
    expect(/(projects)\/[0-9]+/).to match(current_path)
    
    expect(page).to have_link "Join Project"
    expect(page).not_to have_link "Leave Project"

    click_on "Join Project"
    
    expect(page).to have_link "Leave Project"
    expect(page).not_to have_link "Join Project"
  end
end
