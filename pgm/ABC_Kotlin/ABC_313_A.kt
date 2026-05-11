// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.time.*
// import java.util.StringTokenizer

// import kotlin.math.*

const val space: String = " "
const val one: Int = 1
const val zero: Int = 0

fun main() {
    readln().toInt()
    val P: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    val max: Int = P.maxOrNull() ?: 0
    val cnt: Int = P.count {it == max}
    if (P[zero] != max || (P[zero] == max && cnt > one)) {
        println(max - P[zero] + one)
    } else {
        println(zero)
    }
    kotlin.system.exitProcess(0)
}