// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.math.BigDecimal
// import java.math.RoundingMode
// import java.time.LocalTime
// import java.time.format.DateTimeFormatter
// import java.util.Scanner
// import java.util.StringTokenizer
// import java.util.TreeMap

// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val thirty: Int = 30

fun main() {
    val X: Int = readln().toInt()
    if (X >= thirty) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}