class SiteController < ApplicationController
  def index
    @root_page = RootPage.new
  end
end
