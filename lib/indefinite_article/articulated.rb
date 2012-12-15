module IndefiniteArticle
  module Articulated
    def indefinite_article
      string = to_s.split(/[- ]/).first
      WORDS_WITH_INITIAL_VOWELS_THAT_ACT_LIKE_WORDS_WITH_INITIAL_CONSONANTS.each do |test|
        return INDEFINITE_ARTICLE_BEFORE_CONSONANT if string[test]
      end
      WORDS_WITH_INITIAL_CONSONANTS_THAT_ACT_LIKE_WORDS_WITH_INITIAL_VOWELS.each do |test|
        return INDEFINITE_ARTICLE_BEFORE_VOWEL if string[test]
      end
      if VOWELS.include? self.to_s.first.downcase
        INDEFINITE_ARTICLE_BEFORE_VOWEL
      else
        INDEFINITE_ARTICLE_BEFORE_CONSONANT
      end
    end

    def with_indefinite_article(upcase = false)
      "#{upcase ? indefinite_article.humanize : indefinite_article}#{ ' ' unless self.blank? }#{self}"
    end
    alias :indefinitize :with_indefinite_article
  end
end

class String
  include ::IndefiniteArticle::Articulated
end

class Symbol
  include ::IndefiniteArticle::Articulated
end
