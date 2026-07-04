// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.time.LocalTime
// import java.time.format.DateTimeFormatter
import java.util.Scanner
// import java.util.StringTokenizer

import kotlin.math.*

const val Takahashi: String = "Takahashi"
const val Aoki: String = "Aoki"
const val Draw: String = "Draw"

fun main() {
    val scanner: Scanner = Scanner(System.`in`)
    val A: Int = scanner.nextInt()
    val B: Int = scanner.nextInt()
    val C: Int = scanner.nextInt()
    val D: Int = scanner.nextInt()
    val E: Int = scanner.nextInt()
    val F: Int = scanner.nextInt()
    val X: Int = scanner.nextInt()
    var takahashiDistance: Int = B * A * (X / (A + C)) + B * min(A, X % (A + C))
    var aokiDistance: Int = E * D * (X / (D + F)) + E * min(D, X % (D + F))
    if (takahashiDistance > aokiDistance) {
        println(Takahashi)
    } else if (takahashiDistance < aokiDistance) {
        println(Aoki)
    } else {
        println(Draw)
    }
    kotlin.system.exitProcess(0)
}