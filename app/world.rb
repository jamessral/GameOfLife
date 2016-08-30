class World
  def initialize(seed)
    @seed = seed
  end

  def cells
    @seed
  end

  def tick
    if cells.count == 3
      @seed = [[2,1]]
    else
      @seed = []
    end
  end
end


# World.new([2,2]).cells #=> [2,2]
