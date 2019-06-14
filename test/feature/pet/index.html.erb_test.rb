require 'test_helper'

class PetPage < Capybara::Rails::TestCase

  test 'List all pets' do
    visit pets_path
    assert_selector "div", class: "card"
  end

  test 'Show pet' do
    visit pets_path
    pet_id = Pet.first.id
    click_link("Show", :match => :first)
    assert_current_path "/pets/#{pet_id}"
  end

  test 'Edit pet' do
    visit pets_path
    pet_id = Pet.first.id
    click_link("Edit", :match => :first)
    assert_current_path "/pets/#{pet_id}/edit"
  end

  test 'Delete pet' do
    visit pets_path
    card =  page.all("div", class: "card").count
    click_link("Destroy", :match => :first)
    page.all("div", class: "card").count.must_equal card-=1
  end

  test "Create pet" do
    assert_difference 'Pet.all.count', 1 do
      visit new_pet_path
      fill_in 'pet[phone]', with: "77 1234-9809"
      fill_in 'pet[breed]', with: "Foo"
      fill_in 'pet[size]', with: "Bar"
      click_button("Salvar")
    end
  end
end
