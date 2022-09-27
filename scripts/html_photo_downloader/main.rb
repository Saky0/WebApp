def execute(options = {})
  # If useDB = "enable", at the end of the script, a register should be insert into the DB
  # It means that the script was used
  puts "\n#{'='*15}"
  puts "Enter an url to get all images in it"
  print "URL: "
  url = STDIN.gets.chomp

  begin
    html = URI.open(url)
  rescue => ex
    puts 'Invalid URL!'
    return
  end




  puts "\n"
end