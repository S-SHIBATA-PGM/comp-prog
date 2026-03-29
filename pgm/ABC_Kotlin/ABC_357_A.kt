// import java.time.*
// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.util.StringTokenizer

// import kotlin.math.*

const val space: String = " "
const val zero: Int = 0

fun main() {
    val (_: Int, M: Int) = readln().split(space).map { it.toInt() }
    val H: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    var cnt: Int = zero
    var sum: Int = zero
    for (h in H) {
        sum += h
        if (sum > M) {
            break;
        }
        cnt++
    }
    println(cnt)
    kotlin.system.exitProcess(0)
}