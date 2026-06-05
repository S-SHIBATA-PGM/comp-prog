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

fun main() {
    val scanner: Scanner = Scanner(System.`in`)
    val N: Int = scanner.nextInt()
    repeat(N) {
        val A: Int = scanner.nextInt()
        val B: Int = scanner.nextInt()
        println(A + B)
    }
    kotlin.system.exitProcess(0)
}