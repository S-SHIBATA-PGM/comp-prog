// import java.time.*

// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "

fun main() {
    val (_: Int, M: Int) = readln().split(space).map { it.toInt() }
    val A: List<Int> = readln().split(space).map { it.toInt() }
    if (A.sum() <= M) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}
