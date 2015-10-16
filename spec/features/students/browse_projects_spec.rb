# Feature: Browse Projects
#   As a student
#   I want to browse projects
#   So I can see which ones interest me
feature 'Sign in as studuent', :omniauth do

  # Scenario: Signed in student can browse projects
  #   Given I have a valid account
  #   And there are 5 projects
  #   And I am signed in
  #   Then I see 5 projects
  scenario "signed in student can see list of projects" do
    
    create_x_many_objects(5, 'project')
    #also creates 1 organization and 1 employer

    login_and_select_role 'student'

    projects = find_all(".project-row")
    expect(projects.size).to eq 5

    expect(has_content? "New Project").to be false

  end
end
