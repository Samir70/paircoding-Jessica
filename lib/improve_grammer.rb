def starts_with_capital?(text)
    return text[0].upcase == text[0]
end

def ends_with_punctuation?(text)
    return text[-1].match(/[.?!]/) != nil
end

def good_sentence?(text)
    return starts_with_capital?(text) && ends_with_punctuation?(text)
end

# 1. Describe the Problem
# Put or write the user story here. Add any clarifying notes you might have.

# - as a user
# - so that i can improve my grammer
# - I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.


# 2. Design the Method Signature
# Include the name of the method, its parameters, return value, and side effects.

# - starts_with_capital?(" ")
# - returns true/false
# - ends_with_punctuation?(" ")
# - return true/false
# - good_sentence?(" ")
# - return true/false
# - arguments are strings
# - side effects, none

# 3. Create Examples as Tests
# Make a list of examples of what the method will take and return.

# - starts_with_capital?("Hello") = true
# - starts_with_capital?("hi") = false

# - ends_with_punctuation?("Yes.") = true
# - ends_with_punctuation?("Yes!") = true
# - ends_with_punctuation?("Yes?") = true
# - ends_with_punctuation?("what") = false

# - good_sentence?("I like dogs.") = true
# - good_sentence?("i like dogs.") = false
# - good_sentence?("I like dogs") = false
# - good_sentence?("i like dogs") = false

# 4. Implement the Behaviour
# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.