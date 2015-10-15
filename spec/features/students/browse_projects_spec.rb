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
    #also creates 1 organization and 1 leader

    signin
    expect(page).to have_content("Choose Role...")
    find_by_id("choose-student-btn").click
    expect(page).to have_content("Logged in as student")

    projects = find_all(".project-row")
    expect(projects.size).to eq 5

    expect(has_content? "New Project").to be false

  end
end
