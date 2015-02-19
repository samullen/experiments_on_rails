class LandingPage
  def products
    Product.from_collection(DB::Product.limit 10)
  end
end
