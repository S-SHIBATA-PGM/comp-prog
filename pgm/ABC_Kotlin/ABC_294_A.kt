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
const val two: Int = 2
const val zero: Int = 0

fun main() {
    readln()
    val A: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    println(A.filter { a: Int -> a % two == zero }.joinToString(separator = space))
    kotlin.system.exitProcess(0)
}