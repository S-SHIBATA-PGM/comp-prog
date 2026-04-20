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

const val sThree: String = "3"
const val sFour: String = "4"
const val blank: String = ""

fun main() {
    val S: String = readln()
    println(arrayOf(S.removeSuffix(sThree), sFour).joinToString(separator = blank))
    kotlin.system.exitProcess(0)
}