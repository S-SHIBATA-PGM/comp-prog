// import java.time.*
// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.util.StringTokenizer

import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "

fun main() {
    val (_: Int, X: Int, Y: Int, Z: Int) = readln().split(space).map { it.toInt() }
    if (min(X, Y) < Z && Z < max(X, Y)) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}