require "test_helper"

class RootPageTest < ActiveSupport::TestCase
  describe "#promoted_products" do
    it "returns no more than 10 products" do
      RootPage.new.promoted_products.size.must_equal 10
    end
  end
end
