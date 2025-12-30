import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "

fun main() {
    val (A: Int, B: Int, C: Int, D: Int) = readln().split(space)
        .map { it.toInt() }
    if (A <= C && B > D) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}
