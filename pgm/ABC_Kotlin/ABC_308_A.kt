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
const val space: String = " "
const val twentyFive: Int = 25
const val hundred: Int = 100
const val sixHundredSeventyFive: Int = 675
const val zero: Int = 0

fun main() {
    val A: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    if (A.contentEquals(A.sorted().toIntArray())) {
        if (A.all { a -> a in hundred..sixHundredSeventyFive && a % twentyFive == zero }) {
            println(Yes)
        } else {
            println(No)
        }
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}
