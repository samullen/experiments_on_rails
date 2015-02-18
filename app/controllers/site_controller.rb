class SiteController < ApplicationController
  def index
    @landing_page = LandingPage.new
  end
end
