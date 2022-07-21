# 1 person
# 2 rolls per frame
# 10 frames

# [
#   [4,6]
#   [7,8]
#   [7,8]
#   [7,8]
#   [7,8]
# ]

scores = []
p "enter your scores"
10.times do
  frame = [rand(4), rand(4)]
  scores << frame
end

p scores.flatten.sum

p "Your total score is #{scores.flatten.sum}"
