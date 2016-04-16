require 'test_helper'

class TaggingTest < ActiveSupport::TestCase
  setup do
    @tagging = taggings(:one)
  end

  test "should be valid" do
    assert @tagging.valid?
  end

  test "should be invalid without article_id" do
    @tagging.article_id = nil
    assert_not @tagging.valid?
  end

  test "should be invalid without tag_id" do
    @tagging.tag_id = nil
    assert_not @tagging.valid?
  end
end
