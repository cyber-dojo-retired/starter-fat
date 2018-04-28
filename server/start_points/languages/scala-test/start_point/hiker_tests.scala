import org.scalatest.FunSuite
import org.scalatest.Assertions._

class HikerSuite extends FunSuite {

  test("the answer to life the universe and everything") {
    assert(Hiker.answer === 42)
  }

}
