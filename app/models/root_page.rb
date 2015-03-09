class RootPage
  def promoted_products
    Product.from_collection(Catalog.new.promoted_products)
  end
end
