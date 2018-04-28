
lambda { |stdout,stderr,status|
  output = stdout + stderr
  matches = output.scan(/Executed (\d+) test(s?), with (\d+) failure/)
  return :amber if matches.count == 0
  matches.each { |m| return :red if m[2].to_i > 0 }
  return :green
}
