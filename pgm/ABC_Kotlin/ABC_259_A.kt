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
    val (N: Int, M: Int, X: Int, T: Int, D: Int) = readln().split(space).map { it.toInt() }
    println(T + min(zero, (M - X) * D))
    kotlin.system.exitProcess(0)
}