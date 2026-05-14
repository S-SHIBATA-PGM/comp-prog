// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.time.*
// import java.util.StringTokenizer

import kotlin.math.*

const val space: String = " "
const val zero: Int = 0

fun main() {
    val (N: Int, P: Int, Q: Int) = readln().split(space).map { it.toInt() }
    val D: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    val price: Int = Q + (D.minOrNull() ?: zero)
    println(min(P, price))
    kotlin.system.exitProcess(0)
}