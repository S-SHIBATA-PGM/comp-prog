// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
import java.math.BigDecimal
import java.math.RoundingMode

// import java.time.LocalTime
// import java.time.format.DateTimeFormatter
// import java.util.Scanner
// import java.util.StringTokenizer
// import java.util.TreeMap

// import kotlin.math.*

const val space: String = " "
const val digit: Int = 7
const val three: Int = 3

fun main() {
    val (A: BigDecimal, B: BigDecimal) = readln().split(space).map { it.toBigDecimal() }
    val C: BigDecimal = (A - B).divide(BigDecimal(three), digit, RoundingMode.DOWN) + B
    println(C.setScale(digit, RoundingMode.DOWN).toPlainString())
    kotlin.system.exitProcess(0)
}