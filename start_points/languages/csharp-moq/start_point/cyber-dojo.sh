MOQ_PATH=/moq/Moq.4.7.99/lib/net45
CASTLE_PATH=/moq/Castle.Core.4.1.1/lib/net45
NUNIT_PATH=/moq/lib/net45

export MONO_PATH=${MOQ_PATH}:${CASTLE_PATH}:${NUNIT_PATH}

mcs -t:library \
  -r:${MOQ_PATH}/Moq.dll \
  -r:${CASTLE_PATH}/Castle.Core.dll \
  -r:${NUNIT_PATH}/nunit.framework.dll \
  -out:RunTests.dll *.cs

if [ $? -eq 0 ]; then
  NUNIT_RUNNERS_PATH=/moq/tools
  mono ${NUNIT_RUNNERS_PATH}/nunit3-console.exe --noheader ./RunTests.dll
fi
