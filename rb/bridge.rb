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

	attr_accessor :suit
	attr_accessor :value
	
	private 
	
	def initialize(aSuit, aValue)
		@suit = aSuit
		@value = aValue	
	end
		
	public
		
	def valueToString(aValue)		
		if aValue <= 9
			return aValue.to_s
		else
			return (aValue==10 ? 'T': (aValue==11 ? 'J': (aValue==12 ? 'Q':(aValue==13 ? 'K':'A')))) 
		end
	end

	def to_s
		return @suit + " " + valueToString(@value) + " "
#		return #{@suit} #{valueToString(@value)}
#		return @suit + " " + @value.to_s		
	end
	
	def <=>(aCardIn)
		return ((self.suit <=> aCardIn.suit) == 0 ? self.value <=> aCardIn.value : self.suit <=> aCardIn.suit)
	end
end

# ----- CardTest -------------
puts "=====CardTest====="

c1 = Card.new(Card::DIAMOND, 6)
puts c1.to_s
c2 = Card.new(Card::DIAMOND, 10)
puts c2.to_s
c3 = Card.new(Card::HEART, 14)
puts c3.to_s

puts(c1 <=> c2)
puts(c3 <=> c1)

# ------------- CardDeck -------------

class CardDeck < Array

	private
	
	def initialize	
		@@suitNames = [Card::CLUB, Card::DIAMOND, Card::HEART, Card::SPADE]	
		@@suitNames.each{|v| initSuit(v)}
		
			#		@suits = Array.new(4){|v| initSuit("HEART")}
	end
	
	def initSuit(suitNameIn)
	
		index = (2..14).to_a
		index.each{|v| push(Card.new(suitNameIn, v))}
		
			#		@aSuit = Array.new(13){|v| Card.new(suitNameIn,v+2)}
			#		aSuit.each{|key, value| puts "#{key} and #{value}"}
	end
	
	def swap(anIndex1, anIndex2)
		self[anIndex1], self[anIndex2] = self[anIndex2], self[anIndex1]
	end
	
	public 
	
	def next
		self.next
	end
	
	def shuffle
		
	end
end

# ----- CardDeckTest -------------
puts "========CardDeckTest========"

cd1 = CardDeck.new
#cd1.initialize
#cd1.initSuit("SPADE")

print cd1

# ----- CardHands -------------
class CardHand < Array
	public 
	
	def GetCards
	#	Array.new(13){CardDeck.next}
	
		13.times
		self << CardDeck.next
	end
end
