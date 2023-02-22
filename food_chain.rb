# frozen_string_literal: true

require_relative 'chain_song_verse'
require_relative 'animals_involved'

# Main class to handle food chain song.
class FoodChain
  include AnimalsInvolved

  NUMBER_OF_ITERATIONS = AnimalsInvolved::ALL_ANIMALS.count - 1

  def song
    0.upto(NUMBER_OF_ITERATIONS).map do |verse_number|
      ChainSongVerse.new(verse_number).generate
    end.join("\n\n")
  end
end
