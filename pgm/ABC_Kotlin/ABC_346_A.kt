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

const val space: String = " "

fun main() {
    readln();
    val A: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    println(
            A
                .asList()
                .zipWithNext {
                    pre: Int, cur: Int ->
                    pre * cur
                }
                .joinToString(space)
    )
    kotlin.system.exitProcess(0)
}