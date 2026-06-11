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

const val yn: String = "\n"
const val zero: Int = 0

fun main() {
    val N: Int = readln().toInt()
    println((N downTo zero).joinToString(separator = yn))
    kotlin.system.exitProcess(0)
}