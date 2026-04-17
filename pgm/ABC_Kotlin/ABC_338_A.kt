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

const val Yes: String = "Yes"
const val No: String = "No"

fun main() {
    val S: String = readln()
    if (S == S.lowercase().replaceFirstChar { it.uppercase() }) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}