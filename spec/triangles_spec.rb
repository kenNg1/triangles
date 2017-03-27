require ('rspec')
require ('triangles')

describe("Triangle#triangle?") do
  it("if it's a triangle and all sides are equal then it's an equilateral") do
    expect(Triangle.new(3,3,3).triangle?).to(eq("This is an equilateral triangle"))
  end

  it("if it's a triangle and only two sides are equal then it's an isoceles") do
    expect(Triangle.new(4,4,6).triangle?).to(eq("This is an isoceles triangle"))
  end

  it("if it's a triangle and only two sides are equal then it's an isoceles") do
    expect(Triangle.new(3,4,2).triangle?).to(eq("This is a scalene triangle"))
  end

  it("if it's a triangle and only two sides are equal then it's an isoceles") do
    expect(Triangle.new(1,1,5).triangle?).to(eq("This is not a triangle"))
  end

end
