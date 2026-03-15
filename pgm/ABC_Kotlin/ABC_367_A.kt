// import java.time.*

// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "

fun main() {
    val (A: Int, B: Int, C: Int) = readln().split(space).map { it.toInt() }
    if (B < C && (A < B || C < A)) {
        println(Yes)
    } else if (C < A && A < B) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}