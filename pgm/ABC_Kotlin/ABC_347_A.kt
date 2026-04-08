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
const val zero: Int = 0

fun main() {
    val (_: Int, K: Int) = readln().split(space).map { it.toInt() }
    val A: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    println(
            A
                    .filter { a: Int -> a % K == zero }
                    .map { a: Int -> (a / K).toString() }
                    .joinToString(space)
    )
    kotlin.system.exitProcess(0)
}