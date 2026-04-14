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

const val sOne: String = "1"
const val sZero: String = "0"
const val one: Int = 1
const val two: Int = 2
const val zero: Int = 0

fun main() {
    val N: Int = readln().toInt()
    println(
            String(
                    CharArray(two * N + one) { i: Int ->
                        if (i % two != zero) sZero.first() else sOne.first()
                    }
            )
    )
    kotlin.system.exitProcess(0)
}
