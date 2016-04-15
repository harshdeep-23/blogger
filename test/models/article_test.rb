require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
  setup do
    @article = articles(:one)
  end

  test "should be valid" do
    assert @article.valid?
  end

  test "should be invalid without a title" do
    @article.title = nil
    assert_not @article.valid?
    @article.title = ''
    assert_not @article.valid?
  end

  test "should be invalid without a content" do
    @article.content = nil
    assert_not @article.valid?
    @article.content = ''
    assert_not @article.valid?
  end

  test "title should not be more than 255 characters long" do
    @article.title = 'a' * 256
    assert_not @article.valid?
  end
end
