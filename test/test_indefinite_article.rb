require File.expand_path('../helper', __FILE__)

class TestIndefiniteArticle < Test::Unit::TestCase
  def setup
  end
  def test_active_support
    assert_equal 'banana'.first, 'b'
  end

  def test_indefinite_article_selection
    assert_equal 'a', 'banana'.indefinite_article
    assert_equal 'an', 'apple'.indefinite_article
    assert_equal 'an', 'Apple'.indefinite_article
  end

  def test_unusual_article_selection
    assert_equal 'a', 'unilateral'.indefinite_article
    assert_equal 'an', 'unintentional'.indefinite_article
    assert_equal 'an', 'unilluminated'.indefinite_article
    assert_equal 'an', 'onerous'.indefinite_article
    assert_equal 'a', 'one'.indefinite_article
    assert_equal 'a', 'One'.indefinite_article
    assert_equal 'a', 'unicorn'.indefinite_article
    assert_equal 'a', 'Unicorn'.indefinite_article
    assert_equal 'an', 'honor'.indefinite_article
    assert_equal 'an', 'Honor'.indefinite_article
    assert_equal 'an', 'honorable'.indefinite_article
    assert_equal 'an', 'hour'.indefinite_article
    assert_equal 'an', 'Hour'.indefinite_article
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
