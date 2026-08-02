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

const val er: String = "er"
const val ist: String = "ist"

fun main() {
    val S: String = readln()
    if (S.endsWith(er)) {
        println(er)
    } else {
        println(ist)
    }
    kotlin.system.exitProcess(0)
}