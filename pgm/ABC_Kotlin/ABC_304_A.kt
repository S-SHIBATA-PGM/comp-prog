// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.time.*
import java.util.Scanner
// import java.util.StringTokenizer

// import kotlin.math.*

const val zero: Int = 0
const val one: Int = 1
const val sp: String = " "

fun main() {
    val scanner: Scanner = Scanner(System.`in`)
    val N: Int = scanner.nextInt()
    val S: Array<String> = Array(N) { "" }
    val A: IntArray = IntArray(N)
    for (i in A.indices) {
        S[i] = scanner.next()
        A[i] = scanner.nextInt()
    }
    var idx: Int = zero
    var min: Int = A[idx]
    for (i in (A.indices.first + one)..A.lastIndex) {
        if (A[i] < min) {
            idx = i
            min = A[i]
        }
    }
    for (i in A.indices) {
        println(S[(i + idx) % N])
    }
    kotlin.system.exitProcess(0)
}