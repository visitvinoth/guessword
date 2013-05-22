def encrypt(raw)
	raw.strip.split(//).map{|e| e.next }.join()
end
lines = IO.readlines("word_list_raw.txt").map do |line|
  encrypt(line.upcase)
end

File.open("word_list_encrypted.js", 'w') do |file|
  file.puts lines
end