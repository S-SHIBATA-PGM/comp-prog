// import java.time.*

// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "

fun main() {
    readln()
    val A: List<Int> = readln().split(space).map { it.toInt() }
    val X: Int = readln().toInt()
    if (A.contains(X)) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}
