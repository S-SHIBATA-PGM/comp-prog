// import java.time.*
// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.util.StringTokenizer

// import kotlin.math.*

const val space: String = " "
const val no: Int = -1
const val one: Int = 1
const val two: Int = 2
const val three: Int = 3

fun main() {
    val (A: Int, B: Int) = readln().split(space).map { it.toInt() }
    if (A == B) {
        println(no)
    } else {
        println(
            listOf(one, two, three)
            .first { it != A && it != B })
    }
    kotlin.system.exitProcess(0)
}