require "test_helper"

class CatalogTest < ActiveSupport::TestCase
  class ProductStore
    def limit(qty)
      collection = Array.new
      qty.times {|i| collection << Object.new}
      collection
    end
  end

  describe "initialization" do
    it "can instantiate without a provided store of products" do
      Catalog.new.must_be_instance_of Catalog
    end

    it "can take an optional collection from which to pull data" do
      Catalog.new([]).must_be_instance_of Catalog
    end

    it "sets products to all DB::Product if no collection is provided" do
      catalog = Catalog.new
      catalog.stored_products.must_be_instance_of DB::Product::ActiveRecord_Relation
    end
  end

  describe "#promoted_products" do
    it "returns five products" do
      products = Catalog.new(ProductStore.new).promoted_products(5)
      products.size.must_equal 5
      products.all? {|p| p.instance_of? Product}.must_equal true
    end
  end
end
