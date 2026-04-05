// import java.time.*
// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.util.StringTokenizer

// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "
const val end: Int = 349
const val cancel: Int = 316
const val zero: Int = 0

fun main() {
    val S: String = readln()
    val edition: Int = S.substring(3, 6).toInt()
    if (edition <= end && edition != cancel && edition != zero) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}