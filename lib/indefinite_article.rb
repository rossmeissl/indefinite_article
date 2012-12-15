require 'indefinite_article/articulated'
require 'active_support'
require 'active_support/core_ext/string'

module IndefiniteArticle
  WORDS_WITH_INITIAL_VOWELS_THAT_ACT_LIKE_WORDS_WITH_INITIAL_CONSONANTS = [/^one$/i, /^onetime$/i, /^uni/i]
  WORDS_WITH_INITIAL_CONSONANTS_THAT_ACT_LIKE_WORDS_WITH_INITIAL_VOWELS = [/^honor/i, /^hour/i, /^heir/]
  INDEFINITE_ARTICLE_BEFORE_CONSONANT = 'a'
  INDEFINITE_ARTICLE_BEFORE_VOWEL = 'an'
  VOWELS = %w(a e i o u)
end
