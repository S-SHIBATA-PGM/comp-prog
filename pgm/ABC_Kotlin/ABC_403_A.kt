// import java.time.*

// import kotlin.math.*

const val one: Int = 1
const val two: Int = 2
const val zero: Int = 0
const val space: String = " "

fun main() {
    val N = readln().toInt()
    val A: List<Int> = readln().split(space).map { it.toInt() }
    var sum: Int = zero
    for (i in zero..N - one step two) {
        sum += A[i]
    }
    println(sum)
    kotlin.system.exitProcess(0)
}