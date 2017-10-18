module Write
  def wr
    for i in 1..30
      text =
      if i == 10
        'ruby'
      elsif i == 20
        'ruby'
      elsif i == 25
        'ruby'
      else
        '<3 ruby'
      end
      puts text
    end
  end
end

module Circ
  def circle(r)
    y = r
    in_radius = r - 0.4
    out_radius = r + 0.4
    until y < -r do
      x = -r
      until x >= out_radius do
        if (x**2 + y**2 >= in_radius) && (x**2 + y**2 <= out_radius)
          print '*'

        else
          print ' '

        end
        x += 0.5
      end
      print "\n"
      y -= 1
    end
  end
end

module H
 def find(hash, key)
   value = nil
   hash. each do | k, v |
     value = v if k == key
     if v. is_a?(Hash)
       find(v, key)
     end
   end
   p value
 end
end

class Test
  include Write
  include Circ
  include H
end

def choose( i )
  ob = Test. new
  if(i == 1)
    ob.wr
  elsif(i == 2)
    ob.circle(5)
  elsif(i == 3)
    hash = { key1: [1,2,3,5,6], key2: { key3: { key4: { key5: 'dada' } } } }
    p ob.find(hash, :key5)
  end
end

choose(1)






