
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :red   if /Failed: /.match(output)
  return :green if /passed./.match(output)
  return :amber
}
