# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn=isbn
    @price=price
    if isbn == "" || price <=0
      raise ArgumentError
    end
  end

  attr_reader :isbn, :price
  attr_writer :isbn, :price

  def price_as_string
    "$%0.2f" % [@price]
  end

end