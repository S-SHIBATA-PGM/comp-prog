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

fun main() {
    val (a: String, b: String, c: String) = readln().map { it.toString() }
    println("$a$b$c".toInt() + "$b$c$a".toInt() + "$c$a$b".toInt())
    kotlin.system.exitProcess(0)
}