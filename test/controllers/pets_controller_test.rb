require 'test_helper'

class PetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pets_path
    assert_response :success
  end

  test "should get show" do
    @pet = Pet.create! breed: 'Foo', size: 'Big', phone: '9999999'
    get pet_path(@pet.id)
    assert_response :success
  end

  test "should get new" do
    get new_pet_path
    assert_response :success
  end

  test "should get edit" do
    @pet = Pet.create! breed: 'Foo', size: 'Big', phone: '9999999'
    get edit_pet_path(@pet.id)
    assert_response :success
  end
end
