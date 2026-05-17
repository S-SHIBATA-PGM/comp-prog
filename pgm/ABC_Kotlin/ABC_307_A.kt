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

const val blank: String = ""
const val space: String = " "
const val seven: Int = 7
const val zero: Int = 0

fun main() {
    val N: Int = readln().toInt()
    val A: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    var s: String = blank
    var sum: Int = zero
    var j: Int = zero
    repeat(N) {
        val next = j + seven
        while (j < next) {
            sum += A[j]
            j++
        }
        print(s)
        print(sum)
        s = space
        sum = zero
    }
    println()
    kotlin.system.exitProcess(0)
}