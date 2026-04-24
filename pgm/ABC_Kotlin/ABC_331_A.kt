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

fun main() {
    val (M: Int, D: Int) = readln().split(space).map { it.toInt() }
    var (y: Int, m: Int, d: Int) = readln().split(space).map { it.toInt() }
    d++
    if (d > D) {
        d -= D
        m++
    }
    if (m > M) {
        m -= M
        y++
    }
    println(arrayOf(y, m, d).joinToString(separator = space))
    kotlin.system.exitProcess(0)
}