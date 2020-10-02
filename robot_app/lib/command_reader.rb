require_relative "commands/left"
require_relative "commands/right"
require_relative "commands/place"
require_relative "commands/move"
require_relative "commands/report"



class CommandReader
  def initialize(sim:)
    @sim = sim
  end

  def read(input)
    input_list = input.gsub(","," ").split
    command_name = input_list[0]
    command_options = input_list[1..-1]

    command = command_mixer.fetch(command_name) { Commands::Null }
    command.new(sim: @sim, args: command_options)
  end

  private

  def command_mixer
    @_command_mixer ||= {
      "REPORT" => Commands::Report,
      "PLACE"  => Commands::Place,
      "LEFT" => Commands::Left,
      "MOVE" => Commanda::Move,
      "RIGHT" => Commands::Right
    }
  end
end
