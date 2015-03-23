class Catalog
  attr_accessor :stored_products

  def initialize(collection=nil)
    @stored_products = collection.presence || DB::Product.all
  end

  def promoted_products(qty=10)
    Product.from_collection(self.stored_products.limit(qty))
  end
end
