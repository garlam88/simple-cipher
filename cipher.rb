module Cipher

  ALPHABET = "abcdefghijklmnopqrstuvwxyz"
  ALPHABET_ARRAY = ALPHABET.chars

  class CipherValidationError < Exception
  end

  def self.encode(string, hash = { :distance => 1 })
     raise CipherValidationError unless string[/[a-zA-Z]+/] == string
     (string.downcase.chars.map { |char| ALPHABET_ARRAY[(ALPHABET_ARRAY.index(char) + hash[:distance]) % 26] }).join

  end

  def self.decode(string, hash = { :distance => 1 })
    raise CipherValidationError unless string[/[a-zA-Z]+/] == string
    (string.downcase.chars.map { |char| ALPHABET_ARRAY[(ALPHABET_ARRAY.index(char) - hash[:distance]) % 26] }).join

  end
end
