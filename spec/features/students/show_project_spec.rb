# Feature: Browse Projects
#   As a student
#   I want to see a projects page
#   So I can learn more about it, and see if it interests me
feature 'Sign in as studuent', :omniauth do

  # Scenario: Signed in student can show a projects page
  #   Given I have a valid account
  #   And there are 5 projects
  #   And I am signed in
  #   When I click on a project
  #   Then I see the projects page
  scenario "signed in student can see a projects page" do
    
    create_x_many_objects(5, 'project')
    #also creates 1 organization and 1 leader

    signin
    expect(page).to have_content("Choose Role...")
    find_by_id("choose-student-btn").click
    binding.pry

    projects = find_all(".project-row")
    project = projects.sample
    project.find(".show-link").click
    expect(/(projects)\/[0-9]+/).to match(current_path)
  end

end
