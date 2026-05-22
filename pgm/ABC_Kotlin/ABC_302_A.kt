// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.time.*
// import java.util.Scanner
// import java.util.StringTokenizer

// import kotlin.math.*

const val space: String = " "
const val one: Long = 1L

fun main() {
    val (A: Long, B: Long) = readln().split(space).map { it.toLong() }
    println((A + B - one) / B)
    kotlin.system.exitProcess(0)
}