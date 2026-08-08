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
const val space: String = " "

fun main() {
    val (S: String, T: String) = readln().split(space)
    if (S < T) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}