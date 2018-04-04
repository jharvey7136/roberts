class Album < ApplicationRecord




  belongs_to :topic

  validates :title, :topic_id, presence: true



  scope :campground_album_items, -> {where(topic_id: '1')}
  scope :river_run_album_items, -> {where(topic_id: '2')}
  scope :estate_park_album_items, -> {where(topic_id: '3')}




  mount_uploader :image, ImageUploader


  def self.by_position
    order("position ASC")
  end


end
