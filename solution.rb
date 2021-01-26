require 'pry'
class Deck

    def initialize
        rank_options = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suit_options = ["Hearts", "Clubs", "Diamonds", "Spades"]
        @deck_of_cards =[]

        suit_options.each do |suit|
            rank_options.each do |rank|
                @deck_of_cards << Card.new(rank,suit)
            end
        end
        @deck_of_cards
    end

    def cards
        @deck_of_cards
    end

    def choose_card
        #pick a random card and remove from deck
        card = @deck_of_cards.sample
        @deck_of_cards = @deck_of_cards.reject {|card_from_deck| card_from_deck == card}
        card
    end

end

class Card 
    attr_reader :suit, :rank

    @@cards =[]

    def initialize(suit,rank)
        @rank = rank
        @suit = suit
        @@cards << self
    end

end
