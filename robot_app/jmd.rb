require_relative 'lib/caller'
input =  [ 'PLACE 0,0,NORTH',  'MOVE' ]
cc = Caller.new(input)
cc.move_robot
