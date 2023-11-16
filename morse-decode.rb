def morse_to_english(code)

morse_to_letter = { ".-" => "a", "-..." => "b", "-.-." => "c", "-.." => "d", "." => "e", "..-." => "f",
 "--." => "g", "...." => "h", ".." => "i", ".---" => "j", "-.-" => "k", ".-.." => "l", "--" => "m", 
 "-." => "n", "---" => "o",  ".--." => "p", "--.-" => "q", ".-." => "r", "..." => "s", "-" => "t", 
 "..-" => "u", "...-" => "v", ".--" => "w", "-..-" => "x", "-.--" => "y", "--.." => "z"}
words = code.split("   ")
decoded_message = words.map { |word|
    letters = word.split(" ")
    letters.map { |letter| morse_to_letter[letter] }.join
}

