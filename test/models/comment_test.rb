require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  setup do
    @comment = comments(:one)
  end

  test "should be valid" do
    assert @comment.valid?
  end

  test "should have a name" do
    @comment.name = nil
    assert_not @comment.valid?
    @comment.name = ''
    assert_not @comment.valid?
  end

  test "should have a content" do
    @comment.content = nil
    assert_not @comment.valid?
    @comment.content = ''
    assert_not @comment.valid?
  end

  test "name should not be more than 255 characters" do
    @comment.name = 'q' * 256
    assert_not @comment.valid?
  end

  test "should be associated with an article" do
    article = Article.find(@comment.article_id)
    assert article.valid?
    @comment.article_id = nil
    assert_not @comment.valid?
  end
end
