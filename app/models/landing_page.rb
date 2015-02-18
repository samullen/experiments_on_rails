class LandingPage
  def products
    DB::Product.limit 10
  end
end
