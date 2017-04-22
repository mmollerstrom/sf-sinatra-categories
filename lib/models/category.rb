class Category
  include DataMapper::Resource

  property :id, Serial, key: true
  property :category_name, String

  has n, :dishes

end
