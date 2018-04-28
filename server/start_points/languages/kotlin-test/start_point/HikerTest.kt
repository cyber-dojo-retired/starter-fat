import io.kotlintest.specs.StringSpec
import io.kotlintest.matchers.shouldBe

class HikerTest : StringSpec() {
    init {
        hiker.answer() shouldBe 42
    }
}
