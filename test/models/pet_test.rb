require 'test_helper'

class PetTest < ActiveSupport::TestCase

  test "create a pet" do
    assert_difference 'Pet.all.count', 1 do
      Pet.create breed: 'Foo', size: 'Big', phone: '999999'
    end
  end

  test "don't create a pet without breed" do
    assert_difference 'Pet.all.count', 0 do
      Pet.create size: 'Big', phone: '999999'
    end
  end

  test "don't create a pet without size" do
    assert_difference 'Pet.all.count', 0 do
      Pet.create breed: 'Foo', phone: '999999'
    end
  end

  test "don't create a pet without phone" do
    assert_difference 'Pet.all.count', 0 do
      Pet.create breed: 'Foo', size: 'Big'
    end
  end

  test "don't create a pet with breed lenght < 3" do
    assert_difference 'Pet.all.count', 0 do
      Pet.create breed: 'A', size: 'Big', phone: '999999'
    end
  end

  test "don't create a pet with size lenght < 3" do
    assert_difference 'Pet.all.count', 0 do
      Pet.create breed: 'Foo', size: 'B', phone: '999999'
    end
  end

  test "don't create a pet with phone lenght < 3" do
    assert_difference 'Pet.all.count', 0 do
      Pet.create breed: 'Foo', size: 'Big', phone: '9'
    end
  end



end
