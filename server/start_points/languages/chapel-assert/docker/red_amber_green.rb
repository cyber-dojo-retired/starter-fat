
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :green if /^All tests passed/.match(output)
  return :red if /error: assert failed/.match(output)
  return :amber
}
