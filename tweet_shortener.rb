# Write your code here.
require 'pry'
def dictionary
  {
    "hello" => 'hi',
    'to' => '2',
    'two' => '2',
    'too' => '2',
    'for' => '4',
    'four' => '4',
    'be' => 'b',
    'you' => 'u',
    'at' => '@',
    'and' => '&'
  }
end

def word_substituter(str)
  str_2_ary = str.split()
  dic_keys = dictionary.keys
  str_2_ary.each do |word|
    if dic_keys.include?(word.downcase)
      # binding.pry
      word.replace(dictionary[word.downcase])
    end
  end
  str_2_ary.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    # binding.pry
    # puts tweet
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  tweet.length <= 140 ? tweet : word_substituter(tweet)
end


def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    shortened_tweet = word_substituter(tweet)
    if shortened_tweet.length > 140
      return shortened_tweet[0..136] + "..."
    end
    shortened_tweet
  else 
    tweet
  end
end