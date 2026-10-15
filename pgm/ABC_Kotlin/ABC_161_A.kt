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

fun main() {
    var (X: Int, Y: Int, Z: Int) = readln().split(space).map { it.toInt() }
    var keep: Int = X
    X = Y
    Y = keep
    keep = X
    X = Z
    Z = keep
    println("$X".plus(space).plus("$Y").plus(space).plus("$Z"))
    kotlin.system.exitProcess(0)
}