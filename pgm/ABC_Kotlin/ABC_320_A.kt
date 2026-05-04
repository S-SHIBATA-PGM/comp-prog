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

fun main() {
    val (A: Double, B: Double) = readln().split(space).map { it.toDouble() }
    println(A.pow(B).toInt() + B.pow(A).toInt())
    kotlin.system.exitProcess(0)
}