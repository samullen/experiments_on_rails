require "test_helper"

class ProductTest < ActiveSupport::TestCase
  describe "::from_collection" do
    it "returns a collection of Products given a collection of objects" do
      products = Product.from_collection([Object.new, Object.new, Object.new])
      products.all? {|p| p.instance_of? Product}.must_equal true
    end
  end
end
