require 'rails_helper'

feature "the signup process" do

  it "has a new user page" do
    visit(new_user_url)
    expect(page).to have_content("Sign Up")
  end

  feature "signing up a user" do

    it "shows username on the homepage after signup" do
      valid_sign_up
      expect(page).to have_content('fakeymcphakeson')
    end

    it "shows errors on the homepage after incorrect signup" do
      invalid_sign_up
      expect(page).to have_content("Password is too short")
    end

  end

end

feature "logging in" do

  it "shows username on the homepage after login" do
    valid_sign_up
    visit(new_session_url)
    valid_sign_in
    expect(page).to have_content("fakeymcphakeson")
  end

  it "shows errors on the homepage after incorrect login" do
    valid_sign_up
    visit(new_session_url)
    invalid_sign_in
    expect(page).to have_content("Invalid username/password")
  end

end

feature "logging out" do

  it "begins with logged out state" do
    valid_sign_up
    click_button("Sign Out")
    expect(page).to have_content("Sign In")
    expect(page).to have_content("Sign Up")
    expect(page).to_not have_content("Sign Out")
  end

  it "doesn't show username on the homepage after logout" do
    sign_up("minsoo", "minsoominsoo")
    click_button("Sign Out")
    visit(goals_url)
    expect(page).to_not have_content("minsoo")
  end

end
