require 'test_helper'

class WordTest < ActiveSupport::TestCase
  def setup
    @word = Word.new(word: "Example", meaning: "例")
  end

  test "should be valid" do
    assert @word.valid?
  end
  
  test "word should be present" do
    @word.word = "     "
    assert_not @word.valid?
  end
  
  test "meaning should not be too long" do
    @word.meaning = "     "
    assert_not @word.valid?
  end
  
  test "word should be unique" do
    duplicate_word = @word.dup
    @word.save
    assert_not duplicate_word.valid?
  end
end
