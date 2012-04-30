class BeersController < ApplicationController
  
  def index
    @beers = Beer.all
  end
  
  def new
    @beer = Beer.new
  end
  
  def create
    @beer = Beer.new(params[:beer])
    if @beer.save
      redirect_to '/'
    else
      render 'new'
    end
  end
  
  def show
    @beer = Beer.find_by_id(params[:id])
    @chars = { :abv => @beer.abv, :sweet => @beer.sweet, :bitter => @beer.bitter, :sour => @beer.sour,
               :chocolate => @beer.chocolate, :nutty => @beer.nutty, :fruity => @beer.fruity,
               :floral => @beer.floral, :light => @beer.light, :medium => @beer.medium,
               :dark => @beer.dark, :smooth => @beer.smooth, :hoppy => @beer.hoppy, 
               :spicy => @beer.spicy, :tart => @beer.tart, :citrus => @beer.citrus,
               :creamy => @beer.creamy, :vanilla => @beer.vanilla, :acidic => @beer.acidic,
               :smoky => @beer.smoky, :cloves => @beer.cloves, :crisp => @beer.crisp,
               :rich => @beer.rich }
  end
  
  def edit
    @beer = Beer.find_by_id(params[:id])
  end
  
  def update
    @beer = Beer.find_by_id(params[:id])
    if @beer.update_attributes(params[:beer])
      redirect_to "/#{@beer.id}"
    else 
      redirect_to "/#{@beer.id}/edit"
    end
  end
  
  def destroy
    @beer = Beer.find_by_id(params[:id])
    @beer.destroy
    redirect_to '/'
  end
  
end