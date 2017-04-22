class Category

  include DataMapper::Resource

  property :id, Serial
  property :category_name, String

  has n, :dishes

end
