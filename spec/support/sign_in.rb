require 'rails_helper'

module SigninHelper
  def sign_in(user)
    visit root_path
    click_link "Sign in"
    fill_in("Email", with: user.email)
    fill_in("Password", with: "test")
    click_button "btn" 
  end
end
