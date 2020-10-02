require 'lib/commander'
 module Commands
   class Place < ::Commander

    def start
      return unless valid?
      @sss.place_robot(
        x: x,
        y: y,
        dir: dir
      )
    end

    def valid?
     valid_table_pos? && valid_dir?
    end

    private

    def place_args
      @_place_args ||=Hash[
        [:x, :y, :dir].zip(@args)
      ]
    end

    def x
      @_x ||= Integer place_args.fetch(:x)
    end

    def y
      @_y ||= Integer place_args.fetch(:y)
    end

    def dir
      @_x ||= place_args.fetch(:dir)
    end

    def valid_table_pos?
      @sss.tab_pos_vaild?(x: x, y: y)
    end

    def valid_dir?
      Robot::DIRS.include?(dir)
    end
   end
 end
