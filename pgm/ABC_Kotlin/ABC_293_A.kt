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

const val space: String = " "
const val one: Int = 1
const val two: Int = 2
const val zero: Int = 0

fun main() {
    val S: CharArray = readln().toCharArray()
    val len: Int = S.size / two - one
    for (i in zero..len) {
        val idx1: Int = two * i
        val idx2: Int = two * i + one
        val keep: Char = S[idx1]
        S[idx1] = S[idx2]
        S[idx2] = keep
    }
    println(String(S))
    kotlin.system.exitProcess(0)
}