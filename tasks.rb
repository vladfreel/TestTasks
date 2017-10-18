module Write
  def wr
    for i in 1..27
      puts '<3 ruby'

      if i==9
        puts 'ruby'
      end
      if i==18
        puts 'ruby'
      end
      if i==22
        puts 'ruby'
      end
    end
  end
end
module Circ
  def circle(r)

    y = r

    in_radius = r - 0.4
    out_radius = r + 0.4

    until y<-r do
      x = -r
      until x >= out_radius do
        if (x**2 + y**2 >= in_radius)&&(x**2 + y**2<= out_radius)
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
   hash.each do |k, v|
     value = v if k == key
     if v.is_a?(Hash)
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
def choose(i)
  ob = Test.new
  if(i==1)
    ob.wr
  elsif(i==2)
    ob.circle(5)
  elsif(i==3)
    hash = { key1: [1,2,3,5,6], key2: { key3: { key4: { key5: 'dada'}}}}
    # hash= {"test"=>1,proc{}=>[[{:key=>"sss"},{"pass"=>{"a"=> [1,{:bsd => [[],[],[],[],[],[[proc{}] => {[7,1]=>{:rr=>111}}]]  }] }}], [1,[:olol, {[1, {:trolo => "r"}] => 1}]]],"zero"=>7,"kuk"=>[{"tr"=>"jxp"},{:lx=>"xp"}]}
    # puts
    p ob.find(hash, :key5)
    # p ob.find(hash, 'test')
  end
end
choose(3)






