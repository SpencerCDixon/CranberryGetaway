require 'rails_helper'

feature "admin can can create a new renter" do
  scenario "admin can sign in with correct information" do
    admin = FactoryGirl.create(:admin)
    sign_in_as(admin)

    visit new_renter_path

    fill_in('First name', with: 'Spencer')
    fill_in('Last name', with: 'Dixon')
    fill_in('Email', with: 'email@email.com')
    fill_in('Phone', with: '6178975643')

    click_on 'Create Renter'
    expect(page).to have_content("Renter successfully created.")
  end

  scenario "admin cant create renter with incorrect info" do
    admin = FactoryGirl.create(:admin)
    sign_in_as(admin)
    visit new_renter_path

    click_on 'Create Renter'
    expect(page).to have_content("can't be blank")
  end
end
