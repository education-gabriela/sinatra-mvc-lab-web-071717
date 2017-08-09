class PigLatinizer

  def piglatinize(word)
    suffix = "ay"

    if self.starts_with_n_consonants(word, 3)
      pig = word.split("").rotate(3).join + suffix
    elsif self.starts_with_n_consonants(word, 2)
      pig = word.split("").rotate(2).join + suffix
    elsif self.starts_with_n_consonants(word, 1)
      pig = word.split("").rotate.join + suffix
    else
      pig = word + "way"
    end
    pig
  end

  def to_pig_latin(phrase)
    phrase.split(" ").map {|w| piglatinize(w)}.join(" ")
  end

  def starts_with_n_consonants(words, n = 1)
    [words].any? {|w| w =~ /\A(?i:(?![aeiou])[a-z]){#{n}}/}
  end
end