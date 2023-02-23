# frozen_string_literal: true
#
class ChainSongVerseFS
  # def initialize(verse)
  #   @verse = verse
  # end

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
        #{action} #{animal(number)} #{consequence} #{animal(number - 1)}.
        #{last_part(number)}
      VERSE
    when 2
      <<~VERSE
        #{first_part(number)}
        How absurd to swallow a bird!
        #{action} #{animal(number)} #{consequence} #{animal(number - 1)}.
        #{action} spider #{consequence} fly.
        #{last_part(number)}
      VERSE
    when 3
      <<~VERSE
        #{first_part(number)}
        Imagine that, to swallow a cat!
        #{action} #{animal(number)} #{consequence} #{animal(number - 1)}.
        #{action} bird #{consequence} spider.
        #{action} spider #{consequence} fly.
        #{last_part(number)}
      VERSE
    when 4
      <<~VERSE
        #{first_part(number)}
        What a hog, to swallow a dog!
        #{action} #{animal(number)} #{consequence} #{animal(number - 1)}.
        #{action} cat #{consequence} bird.
        #{action} bird #{consequence} spider.
        #{action} spider #{consequence} fly.
        #{last_part(number)}
      VERSE
    when 5
      <<~VERSE
        #{first_part(number)}
        Just opened her throat and swallowed a goat!
        #{action} #{animal(number)} #{consequence} #{animal(number - 1)}.
        #{action} dog #{consequence} cat.
        #{action} cat #{consequence} bird.
        #{action} bird #{consequence} spider.
        #{action} spider #{consequence} fly.
        #{last_part(number)}
      VERSE
    when 6
      <<~VERSE
        #{first_part(number)}
        I don't know how she swallowed a cow!
        #{action} #{animal(number)} #{consequence} #{animal(number - 1)}.
        #{action} goat #{consequence} dog.
        #{action} dog #{consequence} cat.
        #{action} cat #{consequence} bird.
        #{action} bird #{consequence} spider.
        #{action} spider #{consequence} fly.
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
    "I know an old lady who swallowed a #{animal(number)}."
  end

  def animal(number)
    case number
    when 0
      'fly'
    when 1
      'spider'
    when 2
      'bird'
    when 3
      'cat'
    when 4
      'dog'
    when 5
      'goat'
    when 6
      'cow'
    when 7
      'horse'
    end
  end

  def action
    'She swallowed the'
  end

  def consequence
    'to catch the'
  end
end
