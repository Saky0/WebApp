def derive_options (*inputs)

  options = inputs.first

  # For now, it will just get the flags that were passed through the command line
  # Each flag will be parsed to hash
  ARGV.each do |line|
    line.match(/--([^=]+)(?:=(.*)|\s*$)/) do |m|
      options[m[1]] = m[2].nil? || (m[2] == '') ? 'enabled' : m[2]
    end
  end

  options
end