// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.time.*
// import java.util.Scanner
// import java.util.StringTokenizer

import kotlin.math.*

const val space: String = " "
const val zero: Int = 0

fun main() {
    val (L1: Int, R1: Int, L2: Int, R2: Int) = readln().split(space).map { it.toInt() }
    println((min(R1, R2) - max(L1, L2)).coerceAtLeast(zero).toString())
    kotlin.system.exitProcess(0)
}