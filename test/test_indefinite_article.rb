require 'helper'

class TestIndefiniteArticle < Test::Unit::TestCase
  def setup
  end
  
  def test_indefinite_article_selection
    assert_equal 'a', 'banana'.indefinite_article
    assert_equal 'an', 'apple'.indefinite_article
  end
  
  def test_unusual_article_selection
    assert_equal 'a', 'one'.indefinite_article
  end
  
  def test_functionality_on_symbol
    assert_equal 'a', :banana.indefinite_article
  end
  
  def test_indefinite_article_prefix
    assert_equal 'a banana', 'banana'.with_indefinite_article
  end
end
