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

const val blank: String = ""
const val space: String = " "
const val one: Int = 1

fun main() {
    val S: CharArray = readln().toCharArray()
    val (a: Int, b: Int) = readln().split(space).map { it.toInt() }
    val keep = S[a - one]
    S[a - one] = S[b - one]
    S[b - one] = keep
    println(S.joinToString(blank))
    kotlin.system.exitProcess(0)
}