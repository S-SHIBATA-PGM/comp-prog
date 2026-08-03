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

const val percent: String = "%";
const val d: String = "d";
const val four: Int = 4;
const val zero: Int = 0;
const val fmt: String = percent + zero + four + d;

fun main() {
    val N: Int = readln().toInt()
    println(fmt.format(N))
    kotlin.system.exitProcess(0)
}