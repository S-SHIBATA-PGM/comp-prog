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

const val space: String = " "
const val one: Int = 1

fun main() {
    val A: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    val B: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    println(A.sum() - B.sum() + one)
    kotlin.system.exitProcess(0)
}