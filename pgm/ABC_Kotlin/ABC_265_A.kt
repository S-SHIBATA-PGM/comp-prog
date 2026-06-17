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
const val three: Int = 3

fun main() {
    val (X: Int, Y: Int, N: Int) = readln().split(space).map { it.toInt() }
    if (X * three < Y) {
        println(X * N)
    } else {
        println(X * (N % three) + Y * (N / three))
    }
    kotlin.system.exitProcess(0)
}