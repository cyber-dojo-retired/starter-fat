
lambda { |stdout,stderr,status|
  output = stdout + stderr
  scala_pattern = /Tests: succeeded (\d+), failed (\d+), canceled (\d+), ignored (\d+), pending (\d+)/
  if match = scala_pattern.match(output)
    match[2] == '0' ? :green : :red
  else
    :amber
 end
}
