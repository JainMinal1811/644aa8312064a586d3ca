require_relative 'simulation'
require_relative 'command_reader'
class Caller

  def initialize(input, simulation: Simulation.new)
    @input = input
    @command_reader = CommandReader.new(sim: simulation)
  end

  def move_robot
    @input.each do |instruction|
      command = @command_reader.read(instruction)
      command.start
    end
  end
end
