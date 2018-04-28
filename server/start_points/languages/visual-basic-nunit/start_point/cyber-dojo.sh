readonly NUNIT_PATH=/usr/lib/cli/nunit.framework-2.6.3

vbnc -nologo \
  -t:library \
  -r:${NUNIT_PATH}/nunit.framework.dll \
    -out:RunTests.dll *.vb

if [ $? -eq 0 ]; then
  nunit-console -nologo RunTests.dll
fi