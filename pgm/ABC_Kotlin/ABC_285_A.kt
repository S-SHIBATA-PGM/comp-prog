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

const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "
const val one: Int = 1
const val two: Int = 2

fun main() {
    val (a: Int, b: Int) = readln().split(space).map { it.toInt() }
    if (a * two == b || a * two + one == b) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}