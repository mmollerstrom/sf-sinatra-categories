class Menu

  include DataMapper::Resource

  property :id, Serial
  property :name, String, length: 128

  has n, :dishes

end
