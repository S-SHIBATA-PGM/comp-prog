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

const val Yes: String = "Yes"
const val No: String = "No"
const val M: String = "M"
const val F: String = "F"
const val MM: String = M + M
const val FF: String = F + F

fun main() {
    readln()
    val S: String = readln()
    if (!S.contains(MM) && !S.contains(FF)) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}