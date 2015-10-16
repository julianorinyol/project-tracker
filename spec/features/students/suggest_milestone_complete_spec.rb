# Feature: Student marks milestone for review
#   As a student
#   I want to submit content for a project
#   So that i can complete milestones, and the project
feature 'Student marks milestone for review', :omniauth do

  # Scenario: Student marks milestone for review
  #   Given I'm logged in as a student
  #   And I have joined project 1
  #   When I visit the  project1's page
  #   And I click "mark completed" 
  #   Then I see "marked for completion"

  scenario "Student marks milestone for review" do

    login_and_select_role 'Student'
    p=create(:project)
    m=create(:milestone, project: p)
    c=create(:content_piece, project: p)
    visit "/projects/" + p.id.to_s
    expect(/(projects)\/[0-9]+/).to match(current_path)
    
    click_link "Join Project"
    expect(page).to have_content(c.text)

    expect(page).to have_css(".mark-milestone-completed-btn")
    click_link "Mark Completed"
    expect(page).to have_content("Waiting on review...")
    
  end
end

