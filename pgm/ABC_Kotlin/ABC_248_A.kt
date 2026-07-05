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

const val cNine: Char = '9'
const val cZero: Char = '0'
const val one: Int = 1

fun main() {
    val S: Set<Char> = readln().toSet()
    val set: Set<Char> = (cZero..cNine).toSet()
    println(set.subtract(S).first())
    kotlin.system.exitProcess(0)
}