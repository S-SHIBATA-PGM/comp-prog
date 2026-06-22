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
const val two: Int = 2
const val four: Int = 4
const val zero: Int = 0

fun main() {
    val Y: Int = readln().toInt()
    val target: Int = Y + (four - two) - Y % four + if (Y % four > two) {
        four
    } else {
        zero
    }
    println(target)
    kotlin.system.exitProcess(0)
}