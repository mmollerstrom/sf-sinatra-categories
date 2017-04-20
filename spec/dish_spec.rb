require './lib/models/dishes.rb'

describe Dish do

  it { is_expected.to have_property :id }
  it { is_expected.to have_property :name }

end
