module IndefiniteArticle
  module Articulated
    def indefinite_article
      if ::IndefiniteArticle::WORDS_WITH_INITIAL_VOWELS_THAT_ACT_LIKE_WORDS_WITH_INITIAL_CONSONANTS.include? to_s._first_word_for_indefinite_article._first_term_for_indefinite_article.downcase
        ::IndefiniteArticle::INDEFINITE_ARTICLES[:consonant]
      elsif VOWELS.include? to_s.first.downcase
        ::IndefiniteArticle::INDEFINITE_ARTICLES[:vowel]
      else
        ::IndefiniteArticle::INDEFINITE_ARTICLES[:consonant]
      end
    end
  
    def with_indefinite_article(upcase = false)
      "#{upcase ? indefinite_article.humanize : indefinite_article}#{ ' ' unless self.blank? }#{self}"
    end

    def _first_word_for_indefinite_article
      split(' ').first
    end
    
    def _first_term_for_indefinite_article
      split('-').first
    end
  end
end

class String
  include ::IndefiniteArticle::Articulated
end

class Symbol
  include ::IndefiniteArticle::Articulated
end
