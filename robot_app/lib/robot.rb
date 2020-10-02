class Robot

  DIRS = [
    NORTH = 'NORTH',
    EAST = 'EAST',
    WEST = 'WEST',
    SOUTH = 'SOUTH'
  ]

  attr_accessor :x, :y ,:dir

  def position
    {
      x: x,
      y: y,
      dir: dir
    }
  end

  def range
    case dir
    when NORTH
      { y: 1 }
    when SOUTH
      { y: -1 }
    when WEST
      { x: -1 }
    when EAST
      { x: 1 }
    end
  end
end
