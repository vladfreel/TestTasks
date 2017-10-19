Sx = 5
Sy = 6
class Robot
  attr_accessor :px,:py,:f,:sx,:sy

  # конструктор для создания размера поля , позиции и направления
  def initialize(px,py,f,sx,sy)
    @px, @py, @f, @sx, @sy = px, py, f, sx, sy
    if sx == "" || sy == ""
      sx = Sx
      sy = Sy
    end
  end

  # поворот влево
  def left
    if @f == 'north'
      @f = 'west'
    elsif @f == 'west'
      @f = 'south'
    elsif @f == 'south'
      @f = 'east'
    elsif @f == 'east'
      @f = 'north'
    end
    return @f
  end

  # поворот вправо
  def right
    if @f == 'north'
      @f = 'east'
    elsif @f == 'east'
      @f = 'south'
    elsif @f == 'south'
      @f = 'west'
    elsif @f == 'west'
      @f = 'north'
    end
    return @f
  end

  # движение робота
  def move
    if @f == 'north'
      @px+=1
      @py+=0
    elsif f == 'east'
      @px+=0
      @py+=1
    elsif f == 'south'
      @px-=1
      @py+=0
    elsif f == 'west'
      @px+=0
      @py-=1
    end
    return @px,@py
  end

  # вывод позиции
  def report
    if (@px >= @sx || @px < 0) || (@py >= @sy || @py < 0)
      return nil
    else
      return @px, @py, @f
    end
  end

end
puts 'Hi, welcome in game Falling Robot'
puts 'If you want to enter field size enter(1 - yes, 2 - no)'

f_size = gets.to_i
if f_size == 1
  puts 'Please enter your field size'
  puts 'Width: '
  width = gets.to_i
  puts 'Height: '
  height = gets.to_i
elsif f_size == 2
  width = ''
  height = ''
else
  puts 'error'
end
puts 'Thanks ,so next enter your position on the field'
puts 'X: '
p_x = gets.to_i
puts 'Y: '
p_y = gets.to_i
puts 'Cool then enter your direction(1-north,2-south,3-west,4-east):'
dir = gets.to_i
dir_s = ''
if dir == 1
  dir_s = 'north'
elsif dir == 2
  dir_s = 'south'
elsif dir == 3
  dir_s = 'west'
elsif dir == 4
  dir_s = 'east'
else
  puts 'error'
end
robot1 = Robot.new(p_x,p_y,dir_s,width,height)
i=0
loop do
  i+=0
  if p_x > width || p_x < 0
    i = 1000
  end
  if p_y > height || p_y < 0
    i = 1000
  end
puts 'Awesome , so you can change direction, move, or report where you are on the field(1 - change direction, 2 - move, 3 - report, 4 - exit)'
action = gets.to_i
if action == 1
  puts 'Where you want to go(1-left,2-right):'
  choose_dir = gets.to_i
  if choose_dir == 1
    robot1.left
  elsif choose_dir == 2
    robot1.right
  else
    puts 'error'
  end
elsif action == 2
  robot1.move
elsif action == 3
  puts ''
  puts robot1.report
  puts ''
elsif action == 4
  i=1000
else
  puts 'error'
end
  break if i==1000
end

