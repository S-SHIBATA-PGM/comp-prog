// import java.time.*

// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val times: Int = 3

fun main() {
    readln()
    val A: List<Int> = readln().split(" ").map { it.toInt() }
    if (A.windowed(times).any { w -> w.all { it == w[0] } }) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}
