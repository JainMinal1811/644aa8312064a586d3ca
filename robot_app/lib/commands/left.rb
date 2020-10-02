require 'commander'
 module Commands
   class Left < ::Commander

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
        args: @sss.next_robot_pos(:left).values
      )
    end
   end
 end
