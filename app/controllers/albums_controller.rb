class AlbumsController < ApplicationController

  def index
    @album_items = Album.by_position
  end

  def campground
    @campground_album_items = Album.campground_album_items.by_position
  end

  def river_run
    @river_run_album_items = Album.river_run_album_items.by_position
  end

  def estate_park
    @estate_park_album_items = Album.estate_park_album_items.by_position
  end


  def new
    @album_item = Album.new
  end

  def create
    @album_item = Album.new(params.require(:album).permit(:title, :topic_id, :image))

    respond_to do |format|
      if @album_item.save
        format.html { redirect_to albums_path, notice: 'Your photo item is now live.' }
      else
        format.html { render :new }
      end
    end
  end


  def edit
    @album_item = Album.find(params[:id])
  end

  def update
    @album_item = Album.find(params[:id])
    
    respond_to do |format|
      if @album_item.update(params.require(:album).permit(:title, :topic_id, :image))
        format.html { redirect_to albums_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @album_item = Album.find(params[:id])
  end

  def destroy
    @album_item = Album.find(params[:id])
    @album_item.destroy
    respond_to do |format|
      format.html { redirect_to albums_url, notice: 'Photo was removed.' }
    end
  end


end