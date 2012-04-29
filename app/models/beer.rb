class Beer < ActiveRecord::Base
  attr_accessible :abv, :acidic, :bitter, :brewer, :chocolate, :citrus, :city, :cloves, :coffee, :country, :creamy, :crisp, :dark, :floral, :fruity, :hoppy, :ibu, :light, :medium, :name, :nutty, :region, :rich, :smoky, :smooth, :sour, :spicy, :srm, :state, :sweet, :tart, :vanilla

  validates :name, :presence => { :message => 'must not be blank.' }
  validates :brewer, :presence => { :message => 'must not be blank.' }
  validates :city, :presence => { :message => 'must not be blank.' }
  validates :state, :presence => { :message => 'must not be blank.' }
  validates :region, :presence => { :message => 'must not be blank.' }
  validates :country, :presence => { :message => 'must not be blank.' }
  validates_acceptance_of :eula
  
end
