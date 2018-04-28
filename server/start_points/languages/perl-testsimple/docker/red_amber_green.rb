
lambda { |stdout,stderr,status|
  output = stdout + stderr
  return :amber if /^# Looks like your test exited with 255/.match(output)
  return :red if /^#Looks like you planned (\d+) test(s?) but ran (\d+)/.match(output)
  return :red if /^# Looks like you failed (\d+) test(s?) of/.match(output)
  return :green if /^ok (\d+) -/.match(output)
  return :amber
}
