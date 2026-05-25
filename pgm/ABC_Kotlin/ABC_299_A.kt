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

const val dot: String = "."
const val bar: String = "|"
const val ast: String = "*"
const val strIn: String = "in"
const val strOut: String = "out"

fun main() {
    readln()
    val S: String = readln()
    val escBar: String = Regex.escape(bar)
    val escDot: String = Regex.escape(dot)
    val escAst: String = Regex.escape(ast)
    val pattern: String = escBar.plus(escDot).plus(ast).plus(escAst).plus(escDot).plus(ast).plus(escBar)
    if (Regex(pattern).containsMatchIn(S)) {
        println(strIn)
    } else {
        println(strOut)
    }
    kotlin.system.exitProcess(0)
}