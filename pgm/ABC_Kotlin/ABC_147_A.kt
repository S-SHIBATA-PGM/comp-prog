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

const val bust: String = "bust"
const val win: String = "win"
const val space: String = " "
const val twentyTwo: Int = 22

fun main() {
    val A: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    if (A.sum() >= twentyTwo) {
        println(bust)
    } else {
        println(win)
    }
    kotlin.system.exitProcess(0)
}