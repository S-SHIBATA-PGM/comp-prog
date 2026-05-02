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

const val Yes: String = "Yes"
const val No: String = "No"
const val two: Int = 2
const val zero: Int = 0

fun main() {
    val S: String = readln()
    val pattern: String = "^(.$zero){${S.length / two}}$"
    if (Regex(pattern).containsMatchIn(S)) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}