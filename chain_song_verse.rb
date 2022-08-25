class ChainSongVerse
  def initialize(verse_number, animals, number_of_iterations)
    @verse_number = verse_number
    @animals = animals
    @number_of_iterations = number_of_iterations
  end

  def generate
    [
      first_part,
      second_part,
      body_part,
      last_part
    ].reject(&:empty?).join("\n")
  end

  private

  attr_reader :verse_number, :animals, :number_of_iterations

  def first_part
    "I know an old lady who swallowed a #{animals[verse_number]}."
  end

  def second_part
    return '' if first_verse? || last_verse?

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

  def body_part
    return '' if first_verse? || last_verse?

    verse_number.downto(1).map do |animal_index|
      "She swallowed the #{animals[animal_index]} to catch the #{animals[animal_index - 1]}."
    end
  end

  def last_part
    return "She's dead, of course!" if last_verse?

    "I don't know why she swallowed the fly. Perhaps she'll die."
  end

  def first_verse?
    verse_number.zero?
  end

  def last_verse?
    verse_number == number_of_iterations
  end
end
