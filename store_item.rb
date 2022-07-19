# coffee = {
#   :item => "cappucino",
#   :price => 4.99,
#   :size => "large",
# }
# pastries = {
#   :item => "croissant",
#   :price => 3.99,
#   :size => "standard",
# }
# plates = {
#   :item => "salad",
#   :price => 7.99,
#   :size => "small",
# }
# puts coffee[:item]

# class Store
# def initialize(item, price, size)
# @item = item
# #     @price = price
# #     @size = size
# #   end

# #   def item
# #     @item
# #   end

# #   def price
# #     @price
# #   end

# #   def size=(add_size)
# #     @size = add_size
# #   end
# # end

# # store1 = Store.new("cappucino", 4.99, "large")

# # puts store1.item
# # puts store1.price
# # puts store1.size = ("medium")

class Store
  attr_reader :item, :price
  attr_writer :size

  def initialize(input_options)
    @item = input_options[:item]
    @price = input_options[:price]
    @size = input_options[:size]
  end
end

store1 = Store.new(item: "cappucino", price: 4.99, size: "large")

puts store1.item
puts store1.price
puts store1.size = ("medium")
