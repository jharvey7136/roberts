class StaticPagesController < ApplicationController




  def root
  end

  def home
  end

  def help
  end

  def about
    respond_to do |format|
      format.html         # /app/views/static_pages/about.html.erb
      format.html.mobile  # /app/views/static_pages/about.html+mobile.erb

    end
  end

  def contact
  end

  def campground
  end

  def mobilehome

  end

  def estatepark
  end





end
