// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.time.*
// import java.util.StringTokenizer

// import kotlin.math.*

const val pi1: String = "3.1415926535897932384626433832795028841971693993751"
const val pi2: String = "058209749445923078164062862089986280348253421170679"
const val blank: String = ""
const val two: Int = 2
const val zero: Int = 0

fun main() {
    val N: Int = readln().toInt()
    val pi: String = arrayOf(pi1, pi2).joinToString(blank)
    println(pi.substring(zero, N + two))
    kotlin.system.exitProcess(0)
}