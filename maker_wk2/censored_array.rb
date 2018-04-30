#  Solution -
#  Check for the the banned_phrases in test_tweets - use include?
#  Replace these phrases with 'CENSORED' and maybe create this as a new array?
#  Puts the new array

test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living with such a bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]


#  Solution - how to do run the censorship on one specific tweet in the test_tweets array:

tweet = test_tweets[0]

current_index = 0
while current_index < banned_phrases.length
  if tweet.include?(banned_phrases[current_index]) == true
    tweet.gsub!(banned_phrases[current_index], "CENSORED")
  end
  current_index += 1
end

puts tweet


#  Solution - how to run the censorship on each of the tweets in the test array:
test_tweets.each do |tweet|
  current_index = 0
  while current_index < banned_phrases.length
    if tweet.include?(banned_phrases[current_index]) == true
      tweet.gsub!(banned_phrases[current_index], "CENSORED")
    end
    current_index += 1
  end

  puts tweet
end


# Solution - how to build a responsive programme that accepts a tweet as an arguement, censors, then returns it:

puts "Please input a tweet: "
tweet = gets.chomp

current_index = 0
while current_index < banned_phrases.length
  if tweet.include?(banned_phrases[current_index]) == true
    tweet.gsub!(banned_phrases[current_index], "CENSORED")
  end
  current_index += 1
end

puts "We have ammended your tweet to read: '#{tweet}'."
