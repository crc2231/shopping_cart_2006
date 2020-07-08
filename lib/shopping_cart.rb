

class ShoppingCart

  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @products = []
  end

  def add_product(product)
    @products << product
  end

  def details
    details = {name: "#{@name}", capacity: @capacity.to_i}
  end

  def total_number_of_products
    sum = 0
    @products.each do |product|
      sum = sum + product.quantity.to_i
    end
    sum
  end

  def is_full?
    total_number_of_products >= @capacity.to_i
  end

  def products_by_category(category_param)
    @products.find_all {|product| product.category == category_param}
  end

end
