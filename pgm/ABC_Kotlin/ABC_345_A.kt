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

const val lt: String = "<"
const val eq: String = "="
const val gt: String = ">"
const val Yes: String = "Yes"
const val No: String = "No"
const val one: Int = 1

fun main() {
    val S: String = readln()
    if (S.startsWith(lt) &&
                    S.endsWith(gt) &&
                    S.substring(one, S.length - one).all { it == eq.single() }
    ) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}
