class Product
  extend Forwardable

  def_delegators :@db_product, :name, :price

  attr_accessor :db_product

  def initialize(db_product)
    @db_product = db_product
  end

  def self.from_collection(collection)
    collection.map {|object| self.new(object)}
  end
end
