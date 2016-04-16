require 'test_helper'

class TagTest < ActiveSupport::TestCase
  setup do
    @tag = tags(:one)
  end

  test "should be valid" do
    assert @tag.valid?
  end

  test "should be invalid without a name" do
    @tag.name = nil
    assert_not @tag.valid?
  end

  test "name should not be more than 255 characters" do
    @tag.name = 't' * 256
    assert_not @tag.valid?
  end
end
