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

const val ABC: String = "ABC"
const val one: Int = 1

fun main() {
    readln()
    val S: String = readln()
    if (S.indexOf(ABC) > -one) {
        println(S.indexOf(ABC) + one)
    } else {
        println(S.indexOf(ABC))
    }
    kotlin.system.exitProcess(0)
}