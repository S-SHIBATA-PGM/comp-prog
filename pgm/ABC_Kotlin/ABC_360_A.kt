// import java.time.*
// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.util.StringTokenizer

// import kotlin.math.*

const val R: String = "R"
const val M: String = "M"
const val Yes: String = "Yes"
const val No: String = "No"

fun main() {
    val S: String = readln()
    if (S.indexOf(R) < S.indexOf(M)) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}