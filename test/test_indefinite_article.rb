require File.expand_path('../helper', __FILE__)

class TestIndefiniteArticle < Minitest::Test
  AN_WORDS = %w{
    AARP
    apple
    ASAP
    unassailable
    ubuntu
    ubersexual
    ungrammatical
    unanswered
    unilluminated
    unintentional
    unlikely
    honor
    honorable
    HRDC
    IP
    onerous
    OSHA
    hour
    honest
    heir
    NDA
    NPC
    utter
    urgent
    XL
    XXL
    a e f h i l m n o r s x
    8 11
  }

  A_WORDS = %w{
    3M
    BBS
    ukulele
    UN
    uk
    oaxaca
    ufo
    unanimous
    one
    onearmed
    once
    onetime
    ouija
    european
    ewe
    FEMA
    LASER
    NAFTA
    NATO
    PIN
    SCUBA
    SWAT
    ubiquity
    uboat
    unicorn
    unilateral
    banana
    user
    useful
    urinologist
    urea
    VIP
    b c d g j k p q t u v w y z
    1 2 3 4 5 6 7 9 10 12 13 14 15 16 17 18 19 20
  }

  def setup
  end

  def test_active_support
    assert_equal 'banana'.first, 'b'
  end

  def test_indefinite_article_selection_for_an
    AN_WORDS.each do |word|
      assert_equal "an", word.indefinite_article, "word: #{word}"
    end
  end

  def test_indefinite_article_selection_for_a
    A_WORDS.each do |word|
      assert_equal "a", word.indefinite_article, "word: #{word}"
    end
  end

  def test_indefinite_article_selection_case_insensitvity
    assert_equal "a", "bananna".indefinite_article
    assert_equal "a", "Bananna".indefinite_article
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

  def test_empty_string
    assert_equal '', ''.indefinitize
  end
end
