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

const val percent: String = "%"
const val dot: String = "."
const val f: String = "f"
const val nine: Int = 9
const val additional: Double = 12800000.0
const val fmt: String = percent + dot + nine + f

fun main() {
    val H: Double = readln().toDouble()
    println(String.format(fmt, sqrt(H * (additional + H))))
    kotlin.system.exitProcess(0)
}