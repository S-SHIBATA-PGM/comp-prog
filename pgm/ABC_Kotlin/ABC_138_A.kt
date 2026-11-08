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
// import java.time.DayOfWeek
// import java.time.LocalTime
// import java.time.format.DateTimeFormatter
// import java.time.format.TextStyle
// import java.util.Locale
// import java.util.Scanner
// import java.util.StringTokenizer
// import java.util.TreeMap

// import kotlin.math.*

const val red: String = "red"
const val threeThousandTwoHundred: Int = 3200

fun main() {
    val a: Int = readln().toInt()
    val s: String = readln()
    if (a >= threeThousandTwoHundred) {
        println(s)
    } else {
        println(red)
    }
    kotlin.system.exitProcess(0)
}