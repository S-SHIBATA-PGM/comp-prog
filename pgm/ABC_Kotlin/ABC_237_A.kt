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

import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val dTwo: Double = 2.0
const val dTirtyOne: Double = 31.0

fun main() {
    val N: Double = readln().toDouble()
    val num: Double = dTwo.pow(dTirtyOne)
    if (-num <= N && N < num) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}