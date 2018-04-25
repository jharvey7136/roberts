require 'test_helper'

class PostTest < ActiveSupport::TestCase


  def setup
    @post = Post.new(title: "Example title", content: "test content", category_id: "1")
  end



  test "title should be present" do
    @post.title = "     "
    assert_not @post.valid?
  end

  test "content should be present" do
    @post.content = "     "
    assert_not @post.valid?
  end

  test "category_id should be present" do
    @post.category_id = "     "
    assert_not @post.valid?
  end





end
