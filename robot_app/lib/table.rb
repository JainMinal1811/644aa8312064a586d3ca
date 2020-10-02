class Table
  attr_accessor :x, :y

  def initialize(dims: [5,5])
    @x = Range.new(0, dims[0] - 1)
    @y = Range.new(0, dims[1] - 1)
  end
end
