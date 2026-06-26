// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
import java.time.LocalTime
import java.time.format.DateTimeFormatter
// import java.util.Scanner
// import java.util.StringTokenizer

import kotlin.math.*

const val HHmm: String = "HH:mm"
const val hh: Int = 21
const val mm: Int = 0

fun main() {
    val K: Long = readln().toLong()
    println(DateTimeFormatter
        .ofPattern(HHmm)
        .format(LocalTime.of(hh, mm)
        .plusMinutes(K)))
    kotlin.system.exitProcess(0)
}