require "rails_helper"

feature "Creating a text shout" do
  scenario "displays the shout" do
    user = create(:user)
    sign_in(user)
    visit root_path
    fill_in "text", with: "test text shout"
    click_on "Create text shout"
    expect(page).to have_content("Shout created")
    expect(page).to have_content("test text shout")
  end
end
