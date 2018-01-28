class Product
  attr_accessor :id, :name, :image_url, :description, :is_discounted
  def initialize(input_options)
    @id = input_options["id"]
    @name = input_options["name"]
    @image_url = input_options["image_url"]
    @description = input_options["description"]
    @description = input_options["description"]
  end 

  def self.convert_hashs(product_hashs)
    collection = []

    product_hashs.each do |product_hash|
    collection << Product.new(product_hash)
  end 

  collection 

end 
end 