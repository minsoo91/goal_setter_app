require 'rails_helper'

feature "create goal" do

  it "has a new goal form" do
    visit(new_goal_url)
    expect(page).to have_content("Create New Goal")
  end

  it "has a new private goal" do
    make_valid_private_goal
    click_button("Sign Out")
    visit(goals_url)
    expect(page).to_not have_content("Eat more chikin.")
  end

  it "has a new public goal" do
    make_valid_public_goal
    click_button("Sign Out")
    visit(goals_url)
    expect(page).to have_content("Stop buying useless shit.")
  end
end

feature "displays goal" do
  it "displays already created goal on the show page" do
    valid_sign_up
    visit(new_goal_url)
    fill_in("Statement", with: "Start buying useful shit")
    click_button("Make Goal")
    visit(goal_url(1))
    expect(page).to have_content("Start buying useful shit")
  end
end
