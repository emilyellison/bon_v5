class Beer < ActiveRecord::Base
  attr_accessible :abv, :acidic, :bitter, :brewer, :chocolate, :citrus, :city, :cloves, :coffee, :country, :creamy, :crisp, :dark, :floral, :fruity, :hoppy, :ibu, :light, :medium, :name, :nutty, :region, :rich, :smoky, :smooth, :sour, :spicy, :srm, :state, :sweet, :tart, :vanilla

  validates :name, :presence => { :message => 'must not be blank.' }
  validates :brewer, :presence => { :message => 'must not be blank.' }
  validates :city, :presence => { :message => 'must not be blank.' }
  validates :state, :presence => { :message => 'must not be blank.' }
  validates :region, :presence => { :message => 'must not be blank.' }
  validates :country, :presence => { :message => 'must not be blank.' }
  validates_acceptance_of :eula
  
  def self.search(name_query, brewer_query)
    
    if !name_query.blank? && !brewer_query.blank?
      find(:all, 
           :conditions => ['UPPER(name) LIKE ? AND UPPER(brewer) LIKE ?', 
           "%#{name_query.upcase}%", "%#{brewer_query.upcase}%"], 
           :order => 'name asc' )
    elsif !name_query.blank?
      find(:all, 
           :conditions => ['UPPER(name) LIKE ?', 
           "%#{name_query.upcase}%"], 
           :order => 'name asc' )
    elsif !brewer_query.blank?
      find(:all, 
           :conditions => ['UPPER(brewer) LIKE ?', 
           "%#{brewer_query.upcase}%"], 
           :order => 'brewer asc' )
    else
      find(:all, :order => 'name asc')
    end
    
  end
  
end
