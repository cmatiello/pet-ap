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

  test "should create a pet" do
    assert_difference 'Pet.all.count', 1 do
      post pets_path, params: {pet: {breed: 'Foo', size: 'Big', phone: '999999'}, format: "json"}
    end
  end

  test "should edit a pet" do
    @pet = Pet.create breed: 'Foo', size: 'Big', phone: '999999'
    put "/pets/#{@pet.id}", params: {pet: {breed: "Bar"}, format: "json"}
    result = Pet.find(@pet.id).breed
    assert_equal(result, 'Bar')
  end

end
