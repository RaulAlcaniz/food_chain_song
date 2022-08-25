# frozen_string_literal: true

require_relative 'chain_song_verse'

# Main class to handle food chain song.
class FoodChain
  ANIMALS = %w[fly spider bird cat dog goat cow horse].freeze
  NUMBER_OF_ITERATIONS = ANIMALS.count - 1

  def initialize; end

  def song
    0.upto(NUMBER_OF_ITERATIONS).map do |verse_number|
      ChainSongVerse.new(verse_number, ANIMALS, NUMBER_OF_ITERATIONS).generate
    end.join("\n\n")
  end
end
