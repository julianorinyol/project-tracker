# Feature: Student submits content
#   As a student
#   I want to submit content for a project
#   So that i can complete milestones, and the project
feature 'Student submits content', :omniauth do

  # Scenario: Student can submit content
  #   Given I'm logged in as a student
  #   When I visit the  projects page
  #   And I click link "Submit Content" 
  #   Then I should see a form to submit content
  #   When I submit the form
  #   The I see my new project's show page 

  scenario "Student can submit content" do
    login_and_select_role 'Student'
    p=create(:project)
    m=create(:milestone, project: p)
    visit "/projects/" + p.id.to_s
    click_link "Join Project"
    click_link "Submit Content"

    expect(page).to have_css("#new_content_piece")
    content = "super duper content here: http://heres-alink-to-some-stuff.com"

    fill_in :content_piece_text, with: content
    select p.name, from: "content_piece_project_id" 
    # select m.requirement, from: "content_piece_milestone_id" 
    
    click_on "Submit Content"
    expect(page).to have_content(content)
    expect(/(projects)\/[0-9]+/).to match(current_path)

    expect(page).to have_link "Edit"

  end
end

