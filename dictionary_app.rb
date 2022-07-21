require "http"

"enter a word: "
word = gets.chomp
dictionary = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=22bf12vddbpizrmyfs90cf695e9j4u1seq52o4klisqmqn6v2").parse(:json)

p dictionary[0]["id"]
