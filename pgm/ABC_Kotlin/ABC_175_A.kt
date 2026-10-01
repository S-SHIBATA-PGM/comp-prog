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

const val R: String = "R"
const val caret: String = "^"
const val lbrack: String = "["
const val rbrack: String = "]"
const val pattern: String = "$lbrack$caret$R$rbrack"
const val zero: Int = 0

fun main() {
    val S: String = readln()
    println(
        S.split(Regex(pattern))
            .maxOfOrNull { it.length } ?: zero
    )
    kotlin.system.exitProcess(0)
}