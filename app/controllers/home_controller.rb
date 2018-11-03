class HomeController < ApplicationController
  
  def top
    @randomNum1 = Seed.where( 'id >= ?', rand(Seed.first.id..Seed.last.id) ).first
    @randomNum2 = Seed.where( 'id >= ?', rand(Seed.first.id..Seed.last.id) ).first
    @idea1 = Seed.find_by(id: @randomNum1)
    @idea2 = Seed.find_by(id: @randomNum2)
  end
  
  def makeIdea
    redirect_to("/")
  end
  
  def create
    @newIdea = Seed.new(idea_seed: params[:idea_seed])
    
    if @newIdea.save
      flash[:notice] = "アイディアの種を植えました"
      redirect_to("/")
    else
      redirect_to("/")
    end
  end
end
