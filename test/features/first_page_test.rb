require "test_helper"

feature "Visiting the site through the first page" do
  scenario "Happy path" do
    visit root_path

    page.all("div.search_result-thumbnail").size.must_equal 10
  end
end
