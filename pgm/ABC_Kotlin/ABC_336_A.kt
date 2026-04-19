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

const val L: String = "L"
const val o: String = "o"
const val n: String = "n"
const val g: String = "g"

fun main() {
    val N: Int = readln().toInt()
    println("$L${o.repeat(N)}$n$g")
    kotlin.system.exitProcess(0)
}