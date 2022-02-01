# @param {String} s
# @return {String}
def reverse_words(s)
  return "" if s.nil?

  len = s.size - 1
  stack1 = []
  result = ""
  s.each_char.with_index do |c, i|
    if c == " "
      while !stack1.empty?
        result += stack1.pop # TODO: es mejorable, quizas aplicando two pointers para darle reversa nos ahorramos unas cuantas iteraciones
      end
      result += " "
      next
    end
    stack1 << c
    if i == len
      while !stack1.empty?
        result += stack1.pop
      end
    end
  end
  result
end


# Input: s = "Let's take LeetCode contest"
# Output: "s'teL ekat edoCteeL tsetnoc"
s = "Let's take LeetCode contest"
p reverse_words(s)

