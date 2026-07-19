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

const val two: Int = 2
const val three: Int = 3

fun f(x: Int): Int = x * x + two * x + three

fun main() {
    val t: Int = readln().toInt()
    println(f(f(f(t) + t) + f(f(t))))
    kotlin.system.exitProcess(0)
}