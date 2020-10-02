require 'lib/commander'
 module Commands
   class Report < ::Commander

    def start
      return unless valid?
      puts @sss.present_robot_pos.values
    end

    def valid?
     @sss.robot_placed?
    end
   end
 end
