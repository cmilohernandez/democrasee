@text = ""
@cleanLines = []

file = File.open("sample-bill.txt")

started = false
file.each do |line| 
  if ! started 
    if line.include? "     A BILL\n"
      started = true
    end
  else 
    if ! line.include? "</PRE></BODY>"
      line = line.gsub(/;\n|:\n|; and\n|--\n|\n\n/, '.')
      @text = @text + line
    end
  end
end

lines = @text.split(".")
for line in lines
  if line.to_i / 1000 >= 1
    line = 'Sec' + line
  end
  if ! line.include? 'Sec'
    puts @cleanLines.push(line.strip.gsub(/[\t\n\r\f]/, '').gsub('  ', '') + '.')
  end
end

