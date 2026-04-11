// import java.time.*
// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.util.StringTokenizer

// import kotlin.math.*

const val blank: String = ""
const val pattern: String = "\\|.*\\|"

fun main() {
    val S: String = readln()
    println(Regex(pattern).replaceFirst(S, blank))
    kotlin.system.exitProcess(0)
}