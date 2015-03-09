require "test_helper"

feature "Visiting the site through the first page" do
  scenario "Happy path" do
    visit root_path

    within "#products-promoted" do
      page.all("div.product-thumbnail").size.must_equal 10
    end
  end
end
