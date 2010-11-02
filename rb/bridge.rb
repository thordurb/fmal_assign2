#forritunarmal forritunarverkefni2
#28.10.10
#Problem 2

# ------------- Card -------------

class Card
	CLUB = "club"
	DIAMOND = "diamond"
	HEART = "heart"
	SPADE = "spade"
	
	@suit
	@value

	private :initialize
	
	def initialize(aSuit, aValue)
		@suit = aSuit
		@value = aValue	
	end

	def getSuit
		return @suit
	end
	
	def setSuit(aSuit)
		@suit = asSuit
	end
	
	def getValue
		return @value
	end
	
	def setValue(aValue)
		@value = aVales
	end
	
	def valueToString(aValue)
		if aValue <= 9 then
			print aValue
		end
		if aValue == 10 then 
			print "T"
		end
		if aValue == 11 then
			print "J"
		end
		if aValue == 12 then 
			print "Q"
		end
		if aValue == 13 then 
			print "K"
		end
		if aValue == 14 then
			print "A"
		end
		#else print "invalid entry"
	end						
	
	def to_s
		s = @suit + " " + @value.to_s
		return s
	end
	
	def <=>(aCardIn)
		#suits are the same
		if (self.getSuit == aCardIn.getSuit) then
			if aCardIn.getValue > 1 || aCardIn.getValue < 9 then
				
				if self.getValue < aCardIn.getValue then
					puts "value HIGHER"
					return 1
				end
		
			puts "value LOWER"
			return -1
			end
			puts "here"
		end
		
		#self suit is HIGHER then input
		if (self.getSuit == "spade" && aCardIn.getSuit != "spade") ||
		   (self.getSuit == "heart" && aCardIn.getSuit != "spade") ||
		   (self.getSuit == "diamond" && aCardIn.getSuit != "heart") ||
		   (self.getSuit == "diamond" && aCardIn.getSuit != "spade") then
			puts "suit HIGHER"
			return 1

		end
		
		#self suit is LOWER the input
		if (self.getSuit == "heart" && aCardIn.getSuit == "spade") then
			return -1
		end
	end
end

# ----- CardTest

c1 = Card.new(Card::DIAMOND, 5)
puts c1.to_s
c2 = Card.new(Card::DIAMOND, 3)
puts c2.to_s

puts(c1 <=> c2)

# ------------- CardDeck -------------

#class CardDeck < Array
#	def initilize
#		@aSuit = Card.getSuite
#	end
#	
#	def initSuite
#	
#	end
#end