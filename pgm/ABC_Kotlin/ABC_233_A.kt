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

import kotlin.math.*

const val nine: Int = 9
const val ten: Int = 10
const val zero: Int = 0
const val space: String = " "

fun main() {
    val (X: Int, Y: Int) = readln().split(space).map { it.toInt() }
    println(max(zero, (Y - X + nine) / ten))
    kotlin.system.exitProcess(0)
}