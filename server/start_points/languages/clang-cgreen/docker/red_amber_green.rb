
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :amber unless /^Completed/.match(output)
  return :red   if /(\d+) failure/.match(output)
  return :red   if /(\d+) exception/.match(output)
  return :green if /(\d+) pass/.match(output)
  return :amber
}
