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
import java.util.TreeMap

// import kotlin.math.*

const val one: Int = 1
const val four: Int = 4
const val six: Int = 6
const val eight: Int = 8
const val oneHundredTwentySix: Int = 126
const val twoHundredTwelve: Int = 212

fun main() {
    val N: Int = readln().toInt()
    val m: TreeMap<Int, Int> = TreeMap()
    m[one] = four
    m[oneHundredTwentySix] = six
    m[twoHundredTwelve] = eight
    println(m.floorEntry(N).value)
    kotlin.system.exitProcess(0)
}