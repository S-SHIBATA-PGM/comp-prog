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

import kotlin.math.*

const val high = ":("
const val soso = "so-so"
const val yay = "Yay!"
const val price: Int = 206
const val tax: Double = 1.08

fun main() {
    val N: Double = readln().toDouble()
    val amount: Int = floor(N * tax).toInt()
    println(
       when {
           price < amount -> high
           price == amount -> soso
           else -> yay
       }
    )
    kotlin.system.exitProcess(0)
}