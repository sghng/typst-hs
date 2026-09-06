// Test the stroke() constructor and field access

#test(stroke(2pt + red).paint, red)
#test(stroke(2pt + red).thickness, 2pt)
#test(stroke(paint: blue).thickness, 1pt)
#test(stroke(red).paint, red)
#test(stroke(3pt).thickness, 3pt)
#test(stroke(dash: "dashed").dash, "dashed")
#test(stroke(cap: "round").cap, "round")
#test(stroke(join: "bevel").join, "bevel")
#test(stroke(miter-limit: 8.0).miter-limit, 8.0)
#test(stroke(2pt + red, thickness: 4pt).thickness, 4pt)
#test(stroke((paint: blue, thickness: 2pt)).paint, blue)
#test(stroke(dash: (1pt, 2pt)).dash, (1pt, 2pt))

#test((1pt + red).paint, red)
#test((1pt + red).thickness, 1pt)
#test((red + 1pt).paint, red)
#test((stroke(1pt + red) + blue).paint, blue)
#test((stroke(1pt + red) + 2pt).thickness, 2pt)
#test((stroke(dash: "dotted") + 1pt + red).dash, "dotted")

#test(stroke(1pt) == stroke(1pt), true)
#test(stroke(1pt) == stroke(2pt), false)

#test(type(stroke(1pt)), "stroke")
