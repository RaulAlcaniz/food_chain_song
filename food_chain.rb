class FoodChain
  ANIMALS = %w[fly spider bird cat dog goat cow horse].freeze
  NUMBER_OF_VERSES = ANIMALS.count

  def initialize; end

  def song
    0.upto(NUMBER_OF_VERSES - 1).map do |verse_number|
      [first_part_of_verse(verse_number),
       second_part_of_verse(verse_number),
       body_part_for(verse_number),
       last_part_of_verse(verse_number)
      ].reject(&:blank?).join("\n")
    end.join("\n\n")
  end

  private

  def first_part_of_verse(verse_number)
    "I know an old lady who swallowed a #{ANIMALS[verse_number]}."
  end

  def second_part_of_verse(verse_number)
    return '' if first_verse?(verse_number) || last_verse?(verse_number)

    case verse_number
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
      'I don\'t know how she swallowed a cow!'
    end
  end

  def body_part_for(verse_number)
    return '' if first_verse?(verse_number) || last_verse?(verse_number)

    verse_number.downto(1).map do |animal_index|
      "She swallowed the #{ANIMALS[animal_index]} to catch the #{ANIMALS[animal_index-1]}."
    end
  end

  def last_part_of_verse(verse_number)
    return "She's dead, of course!" if last_verse?(verse_number)

    "I don't know why she swallowed the fly. Perhaps she'll die."
  end

  def first_verse?(verse_number)
    verse_number.zero?
  end

  def last_verse?(verse_number)
    verse_number == (NUMBER_OF_VERSES - 1)
  end

end
