# def count_words(string)
#   if string == ""
#     return 0
#   end

#   words = string.count(" ") + 1
#   return words
# end

def count_words(string)
  return string.split(" ").length
end
