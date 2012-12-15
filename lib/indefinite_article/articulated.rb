module IndefiniteArticle
  module Articulated
    def indefinite_article
      string = to_s.split(/[- ]/).first
      if string[INDEFINITE_ARTICLE_CONSONANT_LIKE_START]
        INDEFINITE_ARTICLE_BEFORE_CONSONANT
      elsif string[INDEFINITE_ARTICLE_VOWEL_LIKE_START]
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
