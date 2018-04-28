
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :red   if /Error in check(.*)/.match(output)
  return :green if /All tests passed/.match(output)
  return :amber
}
