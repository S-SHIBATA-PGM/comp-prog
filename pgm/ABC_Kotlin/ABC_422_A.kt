// import kotlin.math.*

const val one: Int = 1
const val two: Int = 2
const val eight: Int = 8
const val zero: Int = 0

fun main() {
    val S: String = readln()
    var world: Int = S[zero].digitToInt()
    var stage: Int = S[two].digitToInt()
    if (stage == eight) {
        world++
        stage = one
    } else {
        stage++
    }
    println("$world${S[one]}$stage")
    kotlin.system.exitProcess(0)
}
