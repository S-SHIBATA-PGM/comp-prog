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

const val Takahashi: String = "Takahashi"
const val Aoki: String = "Aoki"
const val Draw: String = "Draw"
const val space: String = " "
const val one: Int = 1
const val zero: Int = 0

fun main() {
    val N: Int = readln().toInt()
    val X: IntArray = IntArray(N)
    val Y: IntArray = IntArray(N)
    for (i in zero until N) {
        val arr: List<Int> = readln().split(space).map { it.toInt() }
        X[i] = arr[zero]
        Y[i] = arr[one]
    }
    if (X.sum() > Y.sum()) {
        println(Takahashi)
    } else if (X.sum() < Y.sum()) {
        println(Aoki)
    } else {
        println(Draw)
    }
    kotlin.system.exitProcess(0)
}