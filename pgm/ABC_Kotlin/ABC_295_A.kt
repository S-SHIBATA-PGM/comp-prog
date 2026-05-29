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
const val sAnd: String = "and"
const val sNot: String = "not"
const val sThat: String = "that"
const val sThe: String = "the"
const val sYou: String = "you"
const val space: String = " "

fun main() {
    readln()
    val keyword: Set<String> = setOf(sAnd, sNot, sThat, sThe, sYou)
    if (readln().split(space).any { word: String -> keyword.contains(word) }) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}