class Triangle
  # write code here; isosceles, equilateral, scalene
  attr_reader :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def triangle_type
    if length1 == length2 && length2 == length3
      :equilateral
    elsif length1 == length2 || length2 == length3 || length1 == length3
      :isosceles
    else
      :scalene
    end
  end

  def min_two_sides_sum
    sorted_sides = [length1, length2, length3].sort
    sorted_sides[0] + sorted_sides[1]
  end

  def max_side
    [length1, length2, length3].max
  end

  def valid_triangle?
    (length1 > 0 && length2 > 0 && length3 > 0) && (min_two_sides_sum > max_side)
  end

  def kind
    if valid_triangle?
      triangle_type
    else
      raise TriangleError
    end
  end

end



class TriangleError < StandardError

end
