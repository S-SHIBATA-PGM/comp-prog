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

// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val ab: String = "ab"
const val ba: String = "ba"
const val space: String = " "

fun main() {
    readln()
    val S: String = readln()
    if (S.contains(ab) || S.contains(ba)) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}