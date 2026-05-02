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
const val space: String = " "
const val zero: Int = 0

fun main() {
    readln()
    val A: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    if (A.all { it == A[zero] }) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}