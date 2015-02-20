class Product
  extend Forwardable

  def_delegators :@stored_product, :name, :price

  attr_accessor :stored_product

  def initialize(stored_product)
    @stored_product = stored_product
  end

  def self.from_collection(collection)
    collection.map {|object| self.new(object)}
  end
end
