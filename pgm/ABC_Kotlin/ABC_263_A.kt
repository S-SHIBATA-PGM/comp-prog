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
const val space: String = " "
const val two: Int = 2
const val three: Int = 3

fun main() {
    val card: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    val count: IntArray = card.toList().groupingBy { it }.eachCount().values.toIntArray()
    if (count.contains(three) && count.contains(two)) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}