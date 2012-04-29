class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :brewer
      t.string :city
      t.string :state
      t.string :region
      t.string :country
      t.integer :sweet
      t.integer :bitter
      t.integer :sour
      t.integer :chocolate
      t.integer :nutty
      t.integer :fruity
      t.integer :floral
      t.integer :coffee
      t.integer :light
      t.integer :medium
      t.integer :dark
      t.integer :smooth
      t.integer :hoppy
      t.integer :spicy
      t.integer :tart
      t.integer :citrus
      t.integer :creamy
      t.integer :vanilla
      t.integer :acidic
      t.integer :smoky
      t.integer :cloves
      t.integer :crisp
      t.integer :rich
      t.integer :ibu
      t.float :abv
      t.integer :srm

      t.timestamps
    end
  end
end
