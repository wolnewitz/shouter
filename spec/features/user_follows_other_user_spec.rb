require 'rails_helper'

feature "following other users" do
  background do
    user = create(:user)
    create(:other_user)
    sign_in(user)
    visit users_path
  end

  scenario "user can't see follow button while on own page" do
    within('.users-list') do
      click_link "codecor"
    end
    expect(page).to have_no_selector(".follow-btn")
  end

  scenario "user sees follow button on other users page" do
    within('.users-list') do
      click_link "bob"
    end
    expect(page).to have_css(".follow-btn")
  end

  feature "clicks follow button" do
    scenario "changes to unfollow and flash appears" do
      within('.users-list') do
        click_link "bob"
      end

      click_on("Follow")
      expect(page).to have_content("You are now following")

      click_on("Unfollow")
      expect(page).to have_content("You are no longer following")
    end
  end
end
