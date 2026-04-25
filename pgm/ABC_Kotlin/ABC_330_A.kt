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

const val space: String = " "

fun main() {
    val (_: Int, L: Int) = readln().split(space).map { it.toInt() }
    val A: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    println(A.count { it >= L })
    kotlin.system.exitProcess(0)
}