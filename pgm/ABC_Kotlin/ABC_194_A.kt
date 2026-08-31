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

const val space: String = " "
const val solid15:Int = 15
const val solid10:Int = 10
const val solid3:Int = 3
const val fat8:Int = 8
const val fat3:Int = 3
const val one:Int = 1
const val two:Int = 2
const val three:Int = 3
const val four:Int = 4

fun main() {
    val (A: Int, B: Int) = readln().split(space).map { it.toInt() }
    val AB:Int = A + B
    if (solid15 <= AB && fat8 <= B) {
        println(one)
    } else if (solid10 <= AB && fat3 <= B) {
        println(two)
    } else if (solid3 <= AB) {
        println(three)
    } else {
        println(four)
    }
    kotlin.system.exitProcess(0)
}