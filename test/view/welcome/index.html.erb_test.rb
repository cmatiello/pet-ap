require 'test_helper'

class WelcomePage < Capybara::Rails::TestCase
  test 'Welcome message' do
    visit welcome_index_path
    assert page.has_content?('Welcome to Pet AP!!!')
  end

  test 'Click on "Post here"' do
    visit welcome_index_path
    click_on 'Post here'
    assert_current_path new_pet_path
  end

  test 'Click on "view all lost animals"' do
    visit welcome_index_path
    click_on 'view all lost animals'
    assert_current_path pets_path
  end
end
