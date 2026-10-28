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

const val one: Int = 1
const val two: Int = 2
const val three: Int = 3

fun main() {
    val A: Int = readln().toInt()
    val B: Int = readln().toInt()
    println(setOf(one, two, three).minus(setOf(A, B)).first())
    kotlin.system.exitProcess(0)
}