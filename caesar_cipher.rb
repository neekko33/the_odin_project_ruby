def caesar_cipher(message, shift)
  result = message.split("").map do |letter|
    if !letter.match(/[A-Za-z]/)
      letter
    else
      isCap = letter.match(/[A-Z]/)
      smallest_num = isCap ? 'A'.ord : 'a'.ord
      largest_num = isCap ? 'Z'.ord : 'z'.ord
      num = letter.ord + shift
      num <= largest_num ? num.chr : (smallest_num + (num - largest_num - 1)).chr
    end
  end
  result.join
end

print caesar_cipher("What a string!", 5)
