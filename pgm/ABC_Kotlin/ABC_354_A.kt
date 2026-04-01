// import java.time.*
// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.util.StringTokenizer

// import kotlin.math.*

const val one: Int = 1
const val base: Int = 2

fun main() {
    val H: Int = readln().toInt()
    var day: Int = one
    var e: Int = one
    var value: Int = one
    while (value <= H) {
        e *= base
        value += e
        day += one
    }
    println(day)
    kotlin.system.exitProcess(0)
}