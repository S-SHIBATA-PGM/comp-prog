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
const val zero: Int = 0

fun main() {
    val (N: Int, K: Int) = readln().split(space).map { it.toInt() }
    val A: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    val list: List<Int> = if (K >= N) {
        List(N) { zero }
    } else {
        A.drop(K) + List(K) { zero }
    }
    println(list.joinToString(separator = space))
    kotlin.system.exitProcess(0)
}