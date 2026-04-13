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

const val only: Int = 1
const val one: Int = 1
const val zero: Int = 0

fun main() {
    val S: String = readln()
    val map: MutableMap<Char, Int> = mutableMapOf()
    for (i: Int in zero until S.length) {
        map[S[i]] = map.getOrDefault(S[i], zero) + one
    }
    for (k: Char in map.keys) {
        if (map[k] == only) {
            println(S.indexOf(k) + one)
            break
        }
    }
    kotlin.system.exitProcess(0)
}