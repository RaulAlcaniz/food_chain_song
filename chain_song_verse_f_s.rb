# frozen_string_literal: true
#
class ChainSongVerseFS
  # def initialize(verse)
  #   @verse = verse
  # end
  ANIMALS = %w[fly spider bird cat dog goat cow horse].freeze

  def verse(number)
    case number
    when 0, 7
      <<~VERSE
        #{first_part(number)}
        #{last_part(number)}
      VERSE
    when 1
      <<~VERSE
        #{first_part(number)}
        It wriggled and jiggled and tickled inside her.
        #{action} #{ANIMALS[number]} #{consequence} #{ANIMALS[number - 1]}.
        #{last_part(number)}
      VERSE
    when 2
      <<~VERSE
        #{first_part(number)}
        How absurd to swallow a bird!
        #{action} #{ANIMALS[number]} #{consequence} #{ANIMALS[number - 1]}.
        #{action} #{ANIMALS[number - 1]} #{consequence} #{ANIMALS[number - 2]}.
        #{last_part(number)}
      VERSE
    when 3
      <<~VERSE
        #{first_part(number)}
        Imagine that, to swallow a cat!
        #{action} #{ANIMALS[number]} #{consequence} #{ANIMALS[number - 1]}.
        #{action} #{ANIMALS[number - 1]} #{consequence} #{ANIMALS[number - 2]}.
        #{action} #{ANIMALS[number - 2]} #{consequence} #{ANIMALS[number - 3]}.
        #{last_part(number)}
      VERSE
    when 4
      <<~VERSE
        #{first_part(number)}
        What a hog, to swallow a dog!
        #{action} #{ANIMALS[number]} #{consequence} #{ANIMALS[number - 1]}.
        #{action} #{ANIMALS[number - 1]} #{consequence} #{ANIMALS[number - 2]}.
        #{action} #{ANIMALS[number - 2]} #{consequence} #{ANIMALS[number - 3]}.
        #{action} #{ANIMALS[number - 3]} #{consequence} #{ANIMALS[number - 4]}.
        #{last_part(number)}
      VERSE
    when 5
      <<~VERSE
        #{first_part(number)}
        Just opened her throat and swallowed a goat!
        #{action} #{ANIMALS[number]} #{consequence} #{ANIMALS[number - 1]}.
        #{action} #{ANIMALS[number - 1]} #{consequence} #{ANIMALS[number - 2]}.
        #{action} #{ANIMALS[number - 2]} #{consequence} #{ANIMALS[number - 3]}.
        #{action} #{ANIMALS[number - 3]} #{consequence} #{ANIMALS[number - 4]}.
        #{action} #{ANIMALS[number - 4]} #{consequence} #{ANIMALS[number - 5]}.
        #{last_part(number)}
      VERSE
    when 6
      <<~VERSE
        #{first_part(number)}
        I don't know how she swallowed a cow!
        #{action} #{ANIMALS[number]} #{consequence} #{ANIMALS[number - 1]}.
        #{action} #{ANIMALS[number - 1]} #{consequence} #{ANIMALS[number - 2]}.
        #{action} #{ANIMALS[number - 2]} #{consequence} #{ANIMALS[number - 3]}.
        #{action} #{ANIMALS[number - 3]} #{consequence} #{ANIMALS[number - 4]}.
        #{action} #{ANIMALS[number - 4]} #{consequence} #{ANIMALS[number - 5]}.
        #{action} #{ANIMALS[number - 5]} #{consequence} #{ANIMALS[number - 6]}.
        #{last_part(number)}
      VERSE
    end
  end

  private

  # attr_accessor :verse

  def last_part(number) # FIXME: Name?
    if number == 7
      "She's dead, of course!"
    else
      "I don't know why she swallowed the fly. Perhaps she'll die."
    end
  end

  def first_part(number) # FIXME: Name?
    "I know an old lady who swallowed a #{ANIMALS[number]}."
  end

  def action
    'She swallowed the'
  end

  def consequence
    'to catch the'
  end
end
