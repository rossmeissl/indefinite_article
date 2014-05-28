require File.expand_path('../helper', __FILE__)

class TestIndefiniteArticle < Test::Unit::TestCase
  AN_WORDS = %w{
    apple
    unilluminated
    unintentional
    unlikely
    honor
    honorable
    onerous
    herb
    hour
    honest
    heir
    utter
    urgent
    a e f h i l m n o r s x
  }

  A_WORDS = %w{
    ukulele
    UN
    uk
    one
    once
    onetime
    european
    ewe
    unicorn
    unilateral
    banana
    user
    useful
    urinologist
    urea
    b c d g j k p q t u v w y z
  } + [
    'UK angler',
    'UN citizen',
    'US ambassador'
  ]

  def setup
  end

  def test_active_support
    assert_equal 'banana'.first, 'b'
  end

  def test_indefinite_article_selection_for_an
    AN_WORDS.each do |word|
      assert_equal "an", word.indefinite_article, "word: #{word}"
      assert_equal "an", word.upcase.indefinite_article, "word: #{word.upcase}"
    end
  end

  def test_indefinite_article_selection_for_a
    A_WORDS.each do |word|
      assert_equal "a", word.indefinite_article, "word: #{word}"
      assert_equal "a", word.upcase.indefinite_article, "word: #{word.upcase}"
    end
  end

  def test_indefinite_article_selection_case_insensitvity
    assert_equal "a", "banana".indefinite_article
    assert_equal "a", "Banana".indefinite_article
    assert_equal "an", "apple".indefinite_article
    assert_equal "an", "Apple".indefinite_article
  end

  def test_phrases
    assert_equal 'a', 'banana of yummieness'.indefinite_article
    assert_equal 'an', 'honor-seeking person'.indefinite_article
  end

  def test_indefinitize
    assert_equal 'a banana', 'banana'.indefinitize
    assert_equal 'an apple', 'apple'.indefinitize
  end

  def test_functionality_on_symbol
    assert_equal 'a', :banana.indefinite_article
  end

  def test_indefinite_article_prefix
    assert_equal 'a banana', 'banana'.with_indefinite_article
  end
end
