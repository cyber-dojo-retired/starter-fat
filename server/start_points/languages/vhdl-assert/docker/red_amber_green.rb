
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :red   if /assertion failed/.match(output)
  return :amber if /compilation error/.match(output)
  return :green
}
