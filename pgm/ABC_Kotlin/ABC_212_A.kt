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
// import java.util.TreeMap

// import kotlin.math.*

const val Gold: String = "Gold"
const val Silver: String = "Silver"
const val Alloy: String = "Alloy"
const val space: String = " "
const val zero: Int = 0

fun main() {
    val (A, B) = readln().split(space).map { it.toInt() }
    if (A > zero && B > zero) {
        println(Alloy)
    } else if (A == zero) {
        println(Silver)
    } else {
        println(Gold)
    }
    kotlin.system.exitProcess(0)
}