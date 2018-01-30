class Product
  attr_accessor :id, :name, :image_url, :description, :is_discounted, :tax, :total, :price, :formatted_price
  def initialize(input_options)
    @id = input_options["id"]
    @name = input_options["name"]
    @image_url = input_options["image_url"]
    @description = input_options["description"]
    @is_discounted = input_options["is_discounted"]
    @tax = input_options["tax"]
    @total = input_options["total"]
    @price = input_options["price"]
    
    @formatted_price = input_options["formatted_price"]
    @formatted_tax = input_options["formatted_tax"]
    @formatted_total = input_options["formatted_total"]

    @supplier_name = input_options["supplier"]["name"]
    @supplier_id = input_options["supplier"]["id"]

    @images_urls = input_options["images"].map { |image_hash| image_hash["url"] }
  end

  def self.convert_hashs(product_hashs)
    collection = []

    product_hashs.each do |product_hash|
      collection << Product.new(product_hash)
    end

    collection
  end
end