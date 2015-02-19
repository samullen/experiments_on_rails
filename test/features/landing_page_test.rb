require "test_helper"

feature "Landing page" do
  scenario "Successful display" do
    visit root_path

    page.all("div.search_result-thumbnail").size.must_equal 10
  end
end
