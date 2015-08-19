class Product
  attr_reader :name, :price, :brand

  def initialize(options)
    @name = options[:name]
    @price = options[:price]
    @brand = options[:brand]
  end

  def to_s
    "#{@name}, €#{@price}"
  end
end

class ProductList
  def initialize(products)
    @products = products.map do |product|
      Product.new(product)
    end
  end

  def count
    @products.size
  end

  def get_names
    @products.map do |product|
      product.name
    end
  end

  def filter_by_brand(brand)
    @products.select do |product|
      product.brand == brand
    end
  end

  def count_by_brand(brand)
    filter_by_brand(brand).size
  end

  def group_by_brand
    @products.group_by do |product|
      product.brand
    end
  end

  def cheapest
    @products.min do |a, b|
      a.price <=> b.price
    end
  end

  def most_expensive
    @products.max do |a, b|
      a.price <=> b.price
    end
  end

  def price_between(min, max)
    @products.reject do |product|
      product.price < min || product.price > max
    end
  end

  def avg_price
    total = @products.reduce(0) do |memo, product|
      memo += product.price
    end
    (total / @products.size).round(2)
  end
end
