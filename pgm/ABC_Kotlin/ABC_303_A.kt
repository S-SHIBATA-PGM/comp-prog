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
const val cOne: Char = '1'
const val cL: Char = 'l'
const val cZero: Char = '0'
const val cO: Char = 'o'
const val zero: Int = 0
const val one: Int = 1

fun main() {
    readln()
    val S: String = readln()
    val T: String = readln()
    var isMatch: Boolean = true
    for (i in S.indices) {
        val s: Char = S[i]
        val t: Char = T[i]
        if (s != t) {
            if (!((s == cOne && t == cL) || (s == cL && t == cOne)) &&
                !((s == cZero && t == cO) || (s == cO && t == cZero))) {
                isMatch = false
                break
            }
        }
    }
    if (isMatch) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}