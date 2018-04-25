require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  def setup
    @cat= Category.new(name: "category1")
  end

  test "category should be valid" do
    assert @cat.valid?
  end





end
