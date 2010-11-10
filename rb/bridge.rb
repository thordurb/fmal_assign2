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
		return @suit + " " + valueToString(@value) + ""	
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
	end
	
	def initSuit(suitNameIn)
		index = (2..14).to_a
		index.each{|v| push(Card.new(suitNameIn, v))}
	end
	
	def swap(anIndex1, anIndex2)
		self[anIndex1], self[anIndex2] = self[anIndex2], self[anIndex1]
	end
	
	public 
	def next
		return self.shift
	end
	
	def shuffle
		26.times{swap(rand(26), rand(26)+26)}		
	end
	
	def to_s
		return self.inject(0){|v, n| print "<#{n}>"}
	end
end

# ----- CardDeckTest -------------
puts "========CardDeckTest========"
puts "CardDeck clean"
deck = CardDeck.new
puts deck.to_s
puts
puts "CardDeck shuffled"
deck.shuffle
puts deck.to_s
puts

# ----- CardHand -------------
class CardHand < Array
	
	public 
	# TODO return sorted array of 13 cards
	def getCards(aDeck)
		return 13.times{self << aDeck.next}	
	end
	
	def to_s
		return self.inject(0){|v, n| print "<#{n}>"}
	end
end

#-------------- CardHandTest -----------
puts "==========CardHandTest=========="
hand = CardHand.new
hand.getCards(deck)
puts hand.to_s

class Bridge
	@west
	@north
	@east
	@south
	@deck
	
	private
	def initalize	
		
	end
	
	public
	attr_accessor :west, :north, :east, :south, :deck
	
	
end





