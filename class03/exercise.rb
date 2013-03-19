responses = ["It is certain", "Reply hazy, try again", "Don't count on it"]
puts "Your answer is: #{responses[1]}"
responses << "It is decidedly so"
responses << "Ask me again later"
responses << "My reply is no"
responses.shift
responses.unshift("It is certain")
puts responses.inspect
responses[1] = "Replay LAZY, try again"
puts responses.inspect
