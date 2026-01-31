// import java.time.*

// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val two: Int = 2

fun main() {
    readln()
    val A: List<Int> = readln().split(" ").map { it.toInt() }
    if (A.windowed(two).all { (a, b) -> a < b }) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}
