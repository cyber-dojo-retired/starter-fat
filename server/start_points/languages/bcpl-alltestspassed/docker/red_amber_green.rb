
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :amber if /bcpl failed returncode/.match(output)
  return :green if /All tests passed/.match(output)
  return :red
}
