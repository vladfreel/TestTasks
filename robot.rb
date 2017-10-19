class Robot
  include Field
  def initialize(px,py,f,sx,sy)
    @px1, @py1, @f1, @sx1, @sy1 = px, py, f, sx, sy
    if sx=="" || sy==""
      sx = 5
      sy = 6
    end
  end
  field = Field.new(sx,sy)
  def p(@px1,@py1,@f1)

  end
  def left

  end
  def right

  end
  def report
    px
    return px, py, f
  end
end
module Field

  def initialize(sizeX,sizeY)

  end

end