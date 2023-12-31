def decode_char(morse_char)
  morse_to_letter = { '.-' => 'a', '-...' => 'b', '-.-.' => 'c', '-..' => 'd', '.' => 'e', '..-.' => 'f',
                      '--.' => 'g', '....' => 'h', '..' => 'i', '.---' => 'j', '-.-' => 'k', '.-..' => 'l', '--' => 'm',
                      '-.' => 'n', '---' => 'o', '.--.' => 'p', '--.-' => 'q', '.-.' => 'r', '...' => 's', '-' => 't',
                      '..-' => 'u', '...-' => 'v', '.--' => 'w', '-..-' => 'x', '-.--' => 'y', '--..' => 'z' }
  morse_to_letter[morse_char]
end

def decode_word(morse_word)
  morse_word.split.map { |morse_char| decode_char(morse_char) }.join
end

def decoded_message(morse_message)
  morse_message.split('   ').map { |morse_word| decode_word(morse_word) }.join(' ')
end

code = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
message = decoded_message(code)
puts "message: #{message}"
