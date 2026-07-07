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

// import kotlin.math.*

const val space: String = " "
const val one: Int = 1
const val two: Int = 2
const val zero: Int = 0

fun main() {
    val xy1: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    val xy2: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    val xy3: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    val x: IntArray = intArrayOf(xy1[zero], xy2[zero], xy3[zero])
    val y: IntArray = intArrayOf(xy1[one], xy2[one], xy3[one])
    println(
        "${x[zero] xor x[one] xor x[two]}"
        .plus("$space")
        .plus("${y[zero] xor y[one] xor y[two]}")
    )
    kotlin.system.exitProcess(0)
}