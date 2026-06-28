// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.time.LocalTime
// import java.time.format.DateTimeFormatter
// import java.util.Scanner
// import java.util.StringTokenizer

// import kotlin.math.*

const val space: String = " "
const val one: Int = 1

fun main() {
    val (R: Int, C: Int) = readln().split(space).map { it.toInt() }
    val A: Array<IntArray> = arrayOf(
        readln().split(space).map { it: String -> it.toInt() }.toIntArray(),
        readln().split(space).map { it: String -> it.toInt() }.toIntArray()
    )
    println(A[R - one][C - one])
    kotlin.system.exitProcess(0)
}