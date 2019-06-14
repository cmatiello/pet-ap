require 'test_helper'

class WelcomePage < Capybara::Rails::TestCase
  test 'Welcome message' do
    visit welcome_index_path
    assert page.has_content?('Seja bem vindo!')
  end

  test 'Click on "Post here"' do
    visit welcome_index_path
    click_on 'Publique aqui'
    assert_current_path new_pet_path
  end

  test 'Click on "view all lost animals"' do
    visit welcome_index_path
    click_on 'veja uma lista dos animais encontrados'
    assert_current_path pets_path
  end
end
