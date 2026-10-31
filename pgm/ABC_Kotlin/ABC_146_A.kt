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
import java.time.DayOfWeek
// import java.time.LocalTime
// import java.time.format.DateTimeFormatter
import java.time.format.TextStyle
import java.util.Locale
// import java.util.Scanner
// import java.util.StringTokenizer
// import java.util.TreeMap

// import kotlin.math.*

const val one: Int = 1

fun main() {
    val S: String = readln()
    val day = arrayOf(DayOfWeek.values().last()) + DayOfWeek.values().dropLast(one)
    val index =
            day.indexOfFirst { d ->
                d.getDisplayName(TextStyle.SHORT, Locale.ENGLISH).uppercase() == S
            }
    println(day.size - index)
    kotlin.system.exitProcess(0)
}
