// import java.time.*
// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.util.StringTokenizer

// import kotlin.math.*

const val AtCoder: String = "AtCoder"
const val Land: String = "Land"
const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "

fun main() {
    var (S: String, T: String) = readln().split(space)
    if (S == AtCoder && T == Land) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}