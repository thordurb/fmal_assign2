#forritunarmal forritunarverkefni2
#27.10.10
#Problem 1

# ------------- code ------------- 
#part a
a1 = [8,1,2,3,4,5,77,99,33,10,11,22,33,44,55,66,7,2,3,4,7,8,0]

#part b
a2 = a1.select{|v| v % 2 == 1 }

#part c
oddSum = a2.inject{|sum, n| sum + n}

#part d
a3 = a1.sort{|x,y| y <=> x}

# ------------- print out ------------- 
print "a: "
p a1
print "b: "
p a2
print "c: "
puts oddSum
print "d: "
p a3