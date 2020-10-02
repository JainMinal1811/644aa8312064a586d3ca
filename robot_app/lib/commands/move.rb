require 'lib/commander'
 module Commands
   class Move < ::Commander

    def start
      return unless valid?
      put_command.start
    end

    def valid?
     @sss.robot_placed?
    end

    private

    def put_command
      @_put_command ||= Commands::Place.new(
        simulation: @sss,
        args: @sss.next_robot_pos(:move).values
      )
    end
   end
 end
