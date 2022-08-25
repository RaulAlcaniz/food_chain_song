# frozen_string_literal: true

require 'minitest/autorun'
require 'pry'
require_relative 'food_chain'

# Test class for the FoodChain song.
class FoodChainTest < Minitest::Test
  # This test is an acceptance test.
  #
  # If you find it difficult to work the problem with so much
  # output, go ahead and add a `skip`, and write whatever
  # unit tests will help you. Then unskip it again
  # to make sure you got it right.
  def test_the_whole_song
    song_file = File.expand_path('song.txt', __dir__)
    expected  = IO.read(song_file)

    assert_equal expected, FoodChain.new.song
  end
end
