module ProductsViews

  def 

  def products_new_form
  end 

  def products_update_form
    client_params = {}

    print "Name (#{{product["name"]}}):  "
    client_params[:name] = gets.chomp 

    print "Description ("
  end 

  def product_errors_views(errors)
    errors.each do |error|
      puts error
    end 
  end 
end 