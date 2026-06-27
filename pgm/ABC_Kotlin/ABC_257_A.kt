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
const val cA: Char = 'A'
const val one: Int = 1

fun main() {
    val (N: Int, X: Int) = readln().split(space).map { it.toInt() }
    println(cA + (X - one) / N)
    kotlin.system.exitProcess(0)
}