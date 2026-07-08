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
// import java.util.Scanner
// import java.util.StringTokenizer

// import kotlin.math.*

const val Takahashi: String = "Takahashi"
const val Aoki: String = "Aoki"
const val space: String = " "

fun main() {
    val (A: Int, B: Int, C: Int, D: Int) = readln().split(space).map { it.toInt() }
    if (A < C) {
        println(Takahashi)
    } else if (A > C) {
        println(Aoki)
    } else if (B <= D) {
        println(Takahashi)
    } else {
        println(Aoki)
    }
    kotlin.system.exitProcess(0)
}