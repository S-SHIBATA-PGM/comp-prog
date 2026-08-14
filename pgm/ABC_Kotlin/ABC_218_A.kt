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

const val Yes: String = "Yes"
const val No: String = "No"
const val circle: Char = 'o'
const val one: Int = 1

fun main() {
    val N: Int = readln().toInt()
    val S: String = readln()
    if (S[N - one] == circle) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}