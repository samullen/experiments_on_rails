require "test_helper"

describe LandingPage do
  describe "#products" do
    it "returns no more than 10 products" do
      LandingPage.new.products.size.must_equal 10
    end
  end
end
