
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :red   if /core\.exception\.AssertError/.match(output)
  return :green if /All tests passed/.match(output)
  return :amber
}
