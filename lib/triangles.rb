require ('pry')

class Triangle
  define_method(:initialize) do |side0,side1,side2|
    @side0 = side0
    @side1 = side1
    @side2 = side2
  end

  define_method(:triangle?) do
    sides = [@side0,@side1,@side2]
    sides = sides.sort()
    if (sides[0] + sides[1]) > sides[2]
      if (sides[0] == sides[1]) && (sides[1]==sides[2])
         "This is an equilateral triangle"
      elsif (sides[0] == sides [1]) || (sides[1] == sides [2])
         "This is an isoceles triangle"
      else
         "This is a scalene triangle"
      end
    else
      "This is not a triangle"
    end
  end
end
