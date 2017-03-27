require ('pry')

class Array
  define_method(:triangle?) do
    sides = sort()
    if (sides[0] + sides[1]) > sides[2]
      if (sides[0] == sides[1]) && (sides[1]==sides[2])
        return "This is an equilateral triangle"
      elsif (sides[0] == sides [1]) || (sides[1] == sides [2])
        return "This is an isoceles triangle"
      else
        return "This is a scalene triangle"
      end
    else
      return "This is not a triangle"
    end
  end
end
