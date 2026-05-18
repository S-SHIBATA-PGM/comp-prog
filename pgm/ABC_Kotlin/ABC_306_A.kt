// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.time.*
// import java.util.StringTokenizer

// import kotlin.math.*

const val blank: String = ""
const val two: Int = 2

fun main() {
    readln()
    val S: String = readln()
    println(S.map { c: Char ->
        c.toString().repeat(two)
    }.joinToString(separator = blank))
    kotlin.system.exitProcess(0)
}