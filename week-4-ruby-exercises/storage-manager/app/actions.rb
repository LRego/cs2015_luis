get "/products" do
  @products = Product.all
  erb :"products/index"
end

get "/products/new" do
    @categories = Categorie.all
    erb :"products/create_product"
end

post "/products/create" do
  product = Product.new(name: params[:name], description: params[:description], price: params[:price])
  product.save
  redirect '/products'
end
#
# get "/categories" do
#   @categories = Categorie.all
#   erb :"/categories/index"
# end
#
# get "/categories/new" do
#   @categories = Categorie.all
#   redirect '/categories'
# end



# create_table :products do |table|
#     table.string :name
#     table.string :description
#     table.decimal :price
# end


# GET /products
# GET /products/new
# GET /products/:id/edit
# POST /products/create
# POST /products/:id/update

# GET /categories
# GET /categories/new
# GET /categories/:id/edit
# POST /categories/create
# POST /categories/:id/update
