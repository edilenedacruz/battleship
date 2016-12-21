class Human

  def initialize
    @letter_hash = letter_hash
  end

  def create_coordinate(user_input)
    letter = user_input.downcase[0]
    number = user_input[-1]
    letter_index = @letter_hash[letter]
    # letter_index = letter_index + 1
    number_index = number.to_i
    [letter_index, number_index]
  end

  def letter_hash
    hash = {}
    ("a".."z").to_a.each_with_index do |letter, index|
      hash[letter] = index + 1
    end
    hash
  end

end
