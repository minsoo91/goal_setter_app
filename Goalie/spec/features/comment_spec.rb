require 'rails_helper'

feature "comment" do

  it "has form on show page" do
    make_valid_public_goal
    visit goal_url(1)
    expect(page).to have_field("Body", :type => 'text')
  end

  it "shows up on a goal show page" do
    make_valid_public_goal
    visit goal_url(1)
    fill_in("Body", "Nice goal, mang!")
    expect(page).to have_content("Nice goal, mang!")
  end

  it "has form on user page" do
    valid_sign_up
    visit users_url(1)
    expect(page).to have_field("Body", type: "text")
  end

  it "shows up on a goal show page" do
    valid_sign_up
    visit users_url(1)
    fill_in("Body", "Nice goal, mang!")
    expect(page).to have_content("Nice goal, mang!")
  end
end
