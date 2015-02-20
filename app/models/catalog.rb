class Catalog
  attr_accessor :products

  def initialize(collection=nil)
    @products = collection.presence || DB::Product.all
  end

  def promoted_products(qty=10)
    Product.from_collection(self.products.limit(qty))
  end
end
