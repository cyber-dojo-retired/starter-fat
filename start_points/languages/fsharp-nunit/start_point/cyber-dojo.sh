readonly NUNIT_PATH=/usr/lib/cli/nunit.framework-2.6.3

fsharpc \
  --nologo \
  --target:library \
  -r:${NUNIT_PATH}/nunit.framework.dll \
  -o RunTests.dll *.fs

if [ $? -eq 0 ]; then
  nunit-console -nologo ./RunTests.dll
fi
