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

const val two: Int = 2
const val zero: Int = 0

fun main() {
    val S: IntArray = readln().map { it.digitToIntOrNull() ?: zero }.toIntArray()
    println(S[zero] * S[two])
    kotlin.system.exitProcess(0)
}