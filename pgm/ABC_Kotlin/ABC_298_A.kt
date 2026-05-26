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

const val good: String = "o"
const val failing: String = "x"
const val Yes: String = "Yes"
const val No: String = "No"
const val blank: String = ""

fun main() {
    readln()
    val S: Array<String> = readln().split(blank).toTypedArray()
    if (S.any { it == good } && S.none { it == failing }) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}