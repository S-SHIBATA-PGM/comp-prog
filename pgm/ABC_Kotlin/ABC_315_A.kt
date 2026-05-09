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

const val a: String = "a"
const val e: String = "e"
const val i: String = "i"
const val o: String = "o"
const val u: String = "u"
const val blank: String = ""

fun main() {
    val S: String = readln()
    val aeiou: String = arrayOf(a, e, i, o, u).joinToString(blank)
    println(S.filter { it !in aeiou })
    kotlin.system.exitProcess(0)
}