// import java.time.*
// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.util.StringTokenizer

// import kotlin.math.*

const val space: String = " "
const val one: Int = 1

fun main() {
    val (N: Int, L: Int, R: Int) = readln().split(space).map { it.toInt() }
    val A: IntArray = IntArray(N) { i: Int -> i + one }
    A.reverse(L - one, R)
    println(A.joinToString(space))
    kotlin.system.exitProcess(0)
}