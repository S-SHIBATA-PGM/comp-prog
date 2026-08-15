// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.math.BigDecimal
// import java.math.RoundingMode
// import java.time.LocalTime
// import java.time.format.DateTimeFormatter
// import java.util.Scanner
// import java.util.StringTokenizer
// import java.util.TreeMap

import kotlin.math.*

const val space: String = " "
const val zero: Int = 0

fun main() {
    val (N: Int, A: Int, X: Int, Y: Int) = readln().split(space).map { it.toInt() }
    println(X * min(N, A) + Y * max(zero, N - A))
    kotlin.system.exitProcess(0)
}