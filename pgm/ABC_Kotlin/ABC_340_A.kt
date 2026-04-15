// import java.time.*
// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.util.StringTokenizer

// import kotlin.math.*

const val space: String = " "

fun main() {
    val (A: Int, B: Int, D: Int) = readln().split(space).map { it.toInt() }
    println((A..B step D).joinToString(space))
    kotlin.system.exitProcess(0)
}