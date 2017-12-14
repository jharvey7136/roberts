class PagesController < ApplicationController

  def home
  end

  def campground
    @page_title = "Campground - Roberts Enterprise"
  end

  def mobilhomepark
    @page_title = "Mobil Home Park - Roberts Enterprise"
  end

  def estatepark
    @page_title = "Estate Park - Roberts Enterprise"
  end
end
