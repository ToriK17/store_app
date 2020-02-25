namespace :food do 
  desc 'populates food from api'
  task populate: :environment do 
    
    products = Openfoodfacts::Product.search("eggs", locale: 'world', page_size: 1)

  
    products.each do |product|
      
      food = product.fetch
      Food.create(
        product_name: food.product_name,
        brands: food.brands,
        url: food.url,
        code: food.code,
        categories: food.categories,
        stores: food.stores
        )
      
    end   
    



  end   
end  