require "test_helper"

class DB::ProductTest < ActiveSupport::TestCase

  def product
    @product ||= DB::Product.new
  end

  def test_valid
    assert product.valid?
  end

end
