#forritunarmal forritunarverkefni2
#28.10.10
#Problem 2

# ------------- version 1 ------------- 
class Integer 
	def primesUpto
		i = self.to_i
	
		a = (2..i).to_a
	
		for x in 2 .. Math.sqrt(i)
			next unless a[i]	
	  			(x*x).step(x, x) do |y|
    			a[y] = nil
   			end
	  	end
 		return a
	end
	
	
# ---------------- version 2 ------------------
#
# FiX
#	
	def primesUpto2
		n = self.to_i
  		s = (0..n).to_a
  		s[0] = s[1] = nil
  		s.each do |p|
  			next unless p
	  		break if p * p > n
  			(p*p).step(n, p) { |m| s[m] = nil }
  			return s
		end
	end
end

# ------------- print out ------------- 
p 29.primesUpto2
