require_relative 'table'
require_relative 'robot'

class Simulation

  def initialize(table: Table.new, robot: Robot.new)
    @table = table
    @robot = robot
  end

  def tab_pos_vaild?(x:, y:)
    table.x_range.cover?(x) && table.y_range.cover?(y)
  end

  def put_robot(x:, y:, dir:)
    robot.x = x
    robot.y = y
    robot.dir = dir
  end

  def present_robot_pos
    robot.position
  end

  def next_robot_pos(action)
    case action
    when :move
      present_robot_pos.merge(robot.range) do |pos, current_pos, range|
        present_robot_pos + range
      end
    when :left
      present_robot_pos.merge(
        dir: Robot::DIRS[Robot::DIR.index(robot.dir)]
      )
    when :right
      present_robot_pos.merge(
        dir: Robot::DIRS[Robot::DIR.index(robot.dir)]
      )
    end
  end
end
