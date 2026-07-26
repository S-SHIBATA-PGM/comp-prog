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
const val twentyFour: Int = 24

fun main() {
    var (S: Int, T: Int, X: Int) = readln().split(space).map { it.toInt() }
    T = if (T < S) T + twentyFour else T;
    X = if (X < S) X + twentyFour else X;
    if (S <= X && X < T) {
        println(Yes);
    } else {
        println(No);
    }
    kotlin.system.exitProcess(0)
}