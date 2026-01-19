// import java.time.*

// import kotlin.math.*

const val lower1: Int = 1600
const val lower2: Int = 1200
const val upper1: Int = 2999
const val upper2: Int = 2399
const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "

fun main() {
    val (R: Int, X: Int) = readln().split(space).map { it.toInt() }
    val lower: List<Int> = listOf(lower1, lower2)
    val upper: List<Int> = listOf(upper1, upper2)
    if (lower[X - 1] <= R && R <= upper[X - 1]) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}
