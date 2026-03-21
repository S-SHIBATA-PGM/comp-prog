// import java.time.*

// import kotlin.math.*

const val dot: Char = '.'
const val space: String = " "

fun main() {
    val (_: Int, D: Int) = readln().split(space).map { it.toInt() }
    val S: String = readln()
    println(S.count { it == dot } + D)
    kotlin.system.exitProcess(0)
}