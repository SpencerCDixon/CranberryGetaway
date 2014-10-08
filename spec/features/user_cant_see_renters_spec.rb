require 'rails_helper'

feature "user can't go to the renters index page" do
  scenario "user signs in and trys to go to renter page" do
    user = FactoryGirl.create(:user)
    sign_in_as(user)

    visit renters_path
    expect(page).to have_content("Invalid request")
  end
end

 
