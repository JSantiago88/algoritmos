

# Manera de resolver 1:

# @param {String} s
# @return {Integer}
#def length_of_last_word s
#    return 0 if s.strip.size == 0
#    s.split(/ /).last.size
#end

# Manera de resolver 2:
def length_of_last_word s
    return 0 if s.strip.size == 0
    stack = []
    max = 0
    s.each_char.with_index do |c, i|
        next if c == " "
        stack << c
        max = stack.size
        stack = [] if s[i+1] == " "
    end
    max
end

s = "   fly me   to   the moon  "
puts length_of_last_word(s)