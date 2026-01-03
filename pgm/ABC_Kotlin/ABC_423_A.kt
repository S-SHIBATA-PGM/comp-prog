// import kotlin.math.*

const val one: Int = 1
const val thousand: Int = 1000
const val zero: Int = 0
const val space: String = " "

fun main() {
    val (X: Int, C: Int) = readln().split(space).map { it.toInt() }
    var withdrawal: Int = zero
    for (i: Int in thousand * (X / thousand) downTo one step thousand) {
        if (zero <= X - (i + C * (i / thousand))) {
            withdrawal = i
            break
        }
    }
    println(withdrawal)
    kotlin.system.exitProcess(0)
}
