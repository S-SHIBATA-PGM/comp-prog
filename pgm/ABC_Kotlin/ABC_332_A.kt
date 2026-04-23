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
const val one: Int = 1
const val zero: Int = 0

fun main() {
    val (N: Int, S: Int, K: Int) = readln().split(space).map { it.toInt() }
    val P: IntArray = IntArray(N)
    val Q: IntArray = IntArray(N)
    for (i in zero until N) {
        val arr: List<Int> = readln().split(space).map { it.toInt() }
        P[i] = arr[zero]
        Q[i] = arr[one]
    }
    var price: Int = zero
    for (i in zero until N) {
        price += P[i] * Q[i]
    }
    if (price < S) {
        println(price + K)
    } else {
        println(price)
    }
    kotlin.system.exitProcess(0)
}