require 'rails_helper'

feature "Creating shouts from dashboard" do
  scenario "creates text shout" do
    user = create(:user)
    sign_in(user)
    visit root_path
    fill_in "text", with: "test text shout"
    click_on "Create text shout"
    expect(page).to have_content("test")
  end

  scenario "creates image shout" do
    user = create(:user)
    sign_in(user)
    visit root_path
    attach_file("photo_shout_image", File.join(Rails.root, '/spec/assets/jack.JPG'))
    click_on "Create image shout"
    expect(page).to have_link("photo-shout[1]")
  end
end
