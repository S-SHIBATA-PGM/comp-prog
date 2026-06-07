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
const val one: Int = 1
const val zero: Int = 0

fun main() {
    val (_: Int, P: Int, Q: Int, R: Int, _: Int) = readln().split(space).map { it.toInt() }
    val A: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    val len: Int = Q - P + one
    val pIdx: Int = P - one
    val rIdx: Int = R - one
    for (i: Int in zero until len) {
        val keep: Int = A[pIdx + i]
        A[pIdx + i] = A[rIdx + i]
        A[rIdx + i] = keep
    }
    println(A.joinToString(space))
    kotlin.system.exitProcess(0)
}
