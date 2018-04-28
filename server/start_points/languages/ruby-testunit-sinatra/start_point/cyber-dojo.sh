echo "~~~~"
cat /tmp/cyber-dojo.init.txt
echo "~~~~"
exit 1

for test_file in *test*.rb
do
  ruby $test_file
done
