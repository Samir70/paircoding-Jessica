require "count_words"

def estimate_reading_time(text)
  words_read = 0
  time_spent = 0
  words_to_read = count_words(text)

  while words_read < words_to_read
    words_read += 200
    time_spent += 1
  end

  return time_spent
end
