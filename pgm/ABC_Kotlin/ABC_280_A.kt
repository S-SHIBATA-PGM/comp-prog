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

const val sharp: Char = '#'

fun main() {
    readln()
    println(generateSequence { readlnOrNull() }.toList().sumOf { s: String ->
        s.count { c: Char -> c == sharp }
    })
    kotlin.system.exitProcess(0)
}