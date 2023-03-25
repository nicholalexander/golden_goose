class EggsController < ApplicationController

  def show
    
    random_number = rand(1..100)

    if random_number < 2
      egg = Egg.create! 
      render json: { egg: egg }
    else
      render json: { egg: nil }
    end
  end

end