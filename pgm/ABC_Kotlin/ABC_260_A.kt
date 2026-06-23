// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.time.*
// import java.util.Scanner
// import java.util.StringTokenizer

// import kotlin.math.*

const val one: Int = 1

fun main() {
    val S: String = readln()
    println(S.groupingBy { it: Char -> it }
        .eachCount()
        .filterValues { cnt: Int -> cnt == one }
        .keys
        .firstOrNull() ?: -one)
    kotlin.system.exitProcess(0)
}