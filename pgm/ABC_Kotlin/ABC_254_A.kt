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

const val fmt: String = "%02d"
const val hundred: Int = 100

fun main() {
    val N: Int = readln().toInt()
    println(String.format(fmt, N % hundred))
    kotlin.system.exitProcess(0)
}