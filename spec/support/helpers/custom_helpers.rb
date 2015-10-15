module CustomHelpers
  def create_x_many_objects(num, factory)
    num.to_i.times do
      create(factory.to_sym)
    end
  end

  def login_and_select_role role
    signin
    expect(page).to have_content("Choose Role...")
    find_by_id("choose-"+role.downcase+"-btn").click
    expect(page).to have_content("Logged in as "+ role.downcase)
  end
end