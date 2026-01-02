// import kotlin.math.*

const val two: Int = 2
const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "

fun main() {
    val (a: Int, b: Int, c: Int) = readln().split(space).map { it.toInt() }
    val set: Set<Int> = hashSetOf(a, b, c)
    if (set.size <= two) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}
