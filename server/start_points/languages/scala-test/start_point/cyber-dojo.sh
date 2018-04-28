rm -f *.class
CLASSES=.:`ls /scalatest/*.jar | tr '\n' ':'`
scalac -cp $CLASSES  *.scala
#scala -cp $CLASSES org.scalatest.run -oW -s HikerSuite
scala -cp $CLASSES org.scalatest.run HikerSuite
