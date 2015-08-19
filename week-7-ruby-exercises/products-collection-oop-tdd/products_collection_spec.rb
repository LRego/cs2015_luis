require_relative "products_collection"


describe "ProductList" do
  let(:products) {[
    { name: "Samsung Galaxy S6 Edge", price: 829.90, brand: "Samsung" },
    { name: "LG G Flex", price: 689.90, brand: "LG" }
  ]}
  let(:products_list) { ProductList.new(products)}

  it "count products " do
    expect(products_list.count).to eq 2
  end

  it "get names" do
    expect(products_list.get_names).to eq ["Samsung Galaxy S6 Edge", "LG G Flex"]
  end

  it "filter by brand" do
    expect(products_list.filter_by_brand("Samsung").map(&:name)).to eq ["Samsung Galaxy S6 Edge"]
  end

  it "should " do

  end
end
