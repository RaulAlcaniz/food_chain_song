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
    else
      <<~VERSE
        #{first_part(number)}
        #{opinion(number)}
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

  def chain_reasons(number) # FIXME: Name?
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

  def opinion(number)
    case number
    when 1
      'It wriggled and jiggled and tickled inside her.'
    when 2
      'How absurd to swallow a bird!'
    when 3
      'Imagine that, to swallow a cat!'
    when 4
      'What a hog, to swallow a dog!'
    when 5
      'Just opened her throat and swallowed a goat!'
    when 6
      "I don't know how she swallowed a cow!"
    end
  end
end
