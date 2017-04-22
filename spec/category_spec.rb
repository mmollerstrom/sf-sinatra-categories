require './lib/models/category.rb'

describe Category do

  it "has a property called id" do
    is_expected.to have_property :id
  end

  it "has a property called category_name" do
    is_expected.to have_property :category_name
  end
end
