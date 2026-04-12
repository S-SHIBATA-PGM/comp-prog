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
const val nine: Int = 9
const val zero: Int = 0

fun main() {
    val (A: Int, B: Int) = readln().split(space).map { it.toInt() }
    for (i: Int in zero..nine) {
        if (i != A + B) {
            println(i)
            break
        }
    }
    kotlin.system.exitProcess(0)
}