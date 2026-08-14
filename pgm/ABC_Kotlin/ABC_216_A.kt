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

const val minus: String = "-"
const val dot: String = "."
const val plus: String = "+"
const val blank: String = ""
const val two: Int = 2
const val six: Int = 6

fun main() {
    val (X: Int, Y: Int) = readln().split(dot).map { it.toInt() }
    val sign: String =
            when {
                Y <= two -> minus
                Y <= six -> blank
                else -> plus
            }
    println("$X$sign")
    kotlin.system.exitProcess(0)
}