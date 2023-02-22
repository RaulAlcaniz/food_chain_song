# frozen_string_literal: true

require_relative 'chain_song_verse'
require_relative 'animals'

# Main class to handle food chain song.
class FoodChain
  include Animals

  ITERATIONS = NUMBER_OF_ANIMALS - 1

  def initialize; end

  def song
    0.upto(ITERATIONS).map do |verse_number|
      ChainSongVerse.new(verse_number).generate
    end.join("\n\n")
  end
end
