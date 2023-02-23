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
        #{chain_reasons(number)}
        #{last_part(number)}
      VERSE
    when 2
      <<~VERSE
        #{first_part(number)}
        How absurd to swallow a bird!
        #{chain_reasons(number)}
        #{last_part(number)}
      VERSE
    when 3
      <<~VERSE
        #{first_part(number)}
        Imagine that, to swallow a cat!
        #{chain_reasons(number)}
        #{last_part(number)}
      VERSE
    when 4
      <<~VERSE
        #{first_part(number)}
        What a hog, to swallow a dog!
        #{chain_reasons(number)}
        #{last_part(number)}
      VERSE
    when 5
      <<~VERSE
        #{first_part(number)}
        Just opened her throat and swallowed a goat!
        #{chain_reasons(number)}
        #{last_part(number)}
      VERSE
    when 6
      <<~VERSE
        #{first_part(number)}
        I don't know how she swallowed a cow!
        #{chain_reasons(number)}
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

  def chain_reasons(number)
    number.downto(1).map do |i|
      "#{action} #{ANIMALS[i]} #{consequence} #{ANIMALS[i - 1]}."
    end.join("\n")
  end

  def action
    'She swallowed the'
  end

  def consequence
    'to catch the'
  end
end
