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

// import kotlin.math.*

const val space: String = " "
const val one: Int = 1
const val zero: Int = 0

fun main() {
    val (_: Int, D: Int) = readln().split(space).map { it.toInt() }
    val T: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    var click: Int = -one
    for (i in zero..(T.lastIndex - one)) {
        if (T[i + one] - T[i] <= D) {
            click = T[i + one]
            break
        }
    }
    println(click)
    kotlin.system.exitProcess(0)
}