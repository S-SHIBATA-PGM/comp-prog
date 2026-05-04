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

const val Yes: String = "Yes"
const val No: String = "No"
const val one: Int = 1
const val two: Int = 2
const val zero: Int = 0

fun main() {
    val N: IntArray = readln().map { it.digitToInt() }.toIntArray()
    if (N.asList().windowed(two).all { it[zero] > it[one] }) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}