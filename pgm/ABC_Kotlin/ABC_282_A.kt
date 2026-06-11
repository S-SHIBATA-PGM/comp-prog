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

const val blank: String = ""
const val A: Char = 'A'
const val one: Int = 1

fun main() {
    val K: Int = readln().toInt()
    println((A..(A + K - one)).joinToString(separator = blank))
    kotlin.system.exitProcess(0)
}