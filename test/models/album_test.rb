require 'test_helper'

class AlbumTest < ActiveSupport::TestCase

  def setup
    @album_item = Album.new(title: "newimage", topic_id: "1" )
  end

  test "title should be present" do
    @album_item.title = "     "
    assert_not @album_item.valid?
  end

  test "topic_id should be present" do
    @album_item.topic_id = "     "
    assert_not @album_item.valid?
  end







end
