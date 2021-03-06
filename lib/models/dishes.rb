class Dish

  include DataMapper::Resource

  property :id, Serial, key: true
  property :name, String, length: 128
  property :menu_id, Serial, key: true
  property :category_id, Serial, key: true

  belongs_to :menu,  key: true
  belongs_to :category, key: true

end
