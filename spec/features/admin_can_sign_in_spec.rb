require 'rails_helper'

feature "admin can can get access to renter info" do
  scenario "admin can sign in with correct information" do
    admin = FactoryGirl.create(:admin)
    sign_in_as(admin)
    expect(page).to have_content("Signed in successfully")
  end
end


