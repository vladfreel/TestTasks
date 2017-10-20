# robot
class Robot
  attr_accessor :px, :py, :f, :sx, :sy

  # construct for creating playing field
  def initialize(px, py, dir, sx, sy)
    @px = px
    @py = py
    @dir = dir
    @sx = sx
    @sy = sy
  end


  # go to the left
  def left
    case @dir
    when 'north'
      @dir = 'west'
    when 'west'
      @dir = 'south'
    when 'south'
      @dir = 'east'
    when 'east'
      @dir = 'north'
    else
      abort 'Error'
    end

  end

  # go to the right
  def right
    case @dir
    when 'north'
      @dir = 'east'
    when 'east'
      @dir = 'south'
    when 'south'
      @dir = 'west'
    when 'west'
      @dir = 'north'
    else
      abort 'Error'
    end

  end

  # robot movement
  def move
    if ((@px >= @sx) && (@dir == 'north')) || ((@px <= 0) && (@dir == 'south')) || ((@py >= @sy) && (@dir == 'east')) || ((@py <= 0) && (@dir == 'west'))
      puts ''
      puts 'Robot on the edge of the table!!!'
      puts ''
    else
      case @dir
      when 'north'
        @px += 1
        @py += 0
      when 'east'
        @px += 0
        @py += 1
      when 'south'
        @px -= 1
        @py += 0
      when 'west'
        @px += 0
        @py -= 1
      else
        puts 'error'
      end
    end
  end

  # write position
  def report
      return @px, @py, @dir
  end
end
puts 'Hi, welcome in game Falling Robot'
puts 'If you want to enter field size enter(1 - yes, 2 - no)'

# entering size of the table,
# if user don't want enter size will be (width - 6, height - 5)
f_size = gets.to_i
case f_size
when 1
  puts 'Please enter your field size'
  puts 'Width: '
  width = gets.to_i
  puts 'Height: '
  height = gets.to_i
when 2
  width = 6
  height = 5
else
  abort 'Wrong number'
end
# entering position on the table (x,y)
puts 'Thanks ,so next enter your position on the field'
puts 'X: '
p_x = gets.to_i
puts 'Y: '
p_y = gets.to_i
puts 'Cool then enter your direction(1-north,2-south,3-west,4-east):'
dir = gets.to_i

# check that user enter correct size of table
if p_x > width || p_y >height || p_x < 0 || p_y < 0
  abort 'Robot is out of the table!!!';
end

# direction where will looking robot
dir_s = ''
case dir
  when 1
    dir_s = 'north'
  when 2
    dir_s = 'south'
  when 3
    dir_s = 'west'
  when 4
    dir_s = 'east'
  else
    abort 'Wrong direction'
end
# object of class Robot
robot1 = Robot.new(p_x, p_y, dir_s, width, height)
loop do
  puts 'Awesome , so you can change direction, move, '
  puts 'or report where you are on the field'
  puts '(1 - left, 2 - right, 3 - move, 4 - report, 5 - exit)'
  action = gets.to_i
  case action
  when 1
    robot1.left
  when 2
    robot1.right
  when 3
    robot1.move
  when 4
    puts ''
    puts robot1.report
    puts ''
  else
    abort 'Good Bye!'
  end
  break if action==5
end
