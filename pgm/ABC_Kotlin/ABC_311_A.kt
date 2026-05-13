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

const val one: Int = 1
const val three: Int = 3
const val zero: Int = 0

fun main() {
    readln()
    val S: Array<String> = readln().map { it.toString() }.toTypedArray()
    val set: MutableSet<String> = mutableSetOf<String>()
    for (i in zero until S.size) {
        set.add(S[i])
        if (set.size == three) {
            println(i + one)
            break
        }
    }
    kotlin.system.exitProcess(0)
}