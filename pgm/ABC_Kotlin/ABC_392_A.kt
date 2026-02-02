// import java.time.*

// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "
const val one: Int = 1
const val two: Int = 2
const val zero: Int = 0

fun main() {
    val A: List<Int> = readln().split(space).map { it.toInt() }.sorted()
    if (A[zero] * A[one] == A[two]) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}