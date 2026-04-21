// import java.time.*
// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.util.StringTokenizer

// import kotlin.math.*

const val Bat: String = "Bat"
const val Glove: String = "Glove"
const val space: String = " "

fun main() {
    val (B: Int, G: Int) = readln().split(space).map { it.toInt() }
    if (B > G) {
        println(Bat)
    } else {
        println(Glove)
    }
    kotlin.system.exitProcess(0)
}