require 'indefinite_article/articulated'
require 'active_support'
require 'active_support/core_ext/string'

module IndefiniteArticle
  INDEFINITE_ARTICLE_CONSONANT_LIKE_START = /^(one$|onetime$|uni(l[^l]|[a-ko-z]))/i
  INDEFINITE_ARTICLE_VOWEL_LIKE_START = /^(honor|hour|heir|[aeiou])/i
  INDEFINITE_ARTICLE_BEFORE_CONSONANT = 'a'
  INDEFINITE_ARTICLE_BEFORE_VOWEL = 'an'
end
