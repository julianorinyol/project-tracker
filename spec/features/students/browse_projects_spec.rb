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
    
    #create(:project)
    signin
    expect(page).to have_content("Choose Role...")
    find_by_id("choose-student-btn").click
    expect(page).to have_content("Logged in as student")
    binding.pry


  end

  # Scenario: User cannot sign in with invalid account
  #   Given I have no account
  #   And I am not signed in
  #   When I sign in
  #   Then I see an authentication error message
  # scenario 'user cannot sign in with invalid account' do
  #   OmniAuth.config.mock_auth[:twitter] = :invalid_credentials
  #   visit root_path
  #   expect(page).to have_content("Sign in")
  #   click_link "Sign in"

  #   expect(page).to have_content('Authentication error')
  # end

end
