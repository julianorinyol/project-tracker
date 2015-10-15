# Feature: Sign in
#   As a student
#   I want to sign in
#   So I can visit student's only parts of site
feature 'Sign in as studuent', :omniauth do

  # Scenario: User can sign in with valid account
  #   Given I have a valid account
  #   And I am not signed in
  #   When I sign in
  #   Then I see a success message
  scenario "user can sign in with valid account" do
    signin

    expect(page).to have_content("Choose role...")

    #click_on    ""
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
