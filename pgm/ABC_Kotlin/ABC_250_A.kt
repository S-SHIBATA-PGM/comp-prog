// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.time.LocalTime
// import java.time.format.DateTimeFormatter
// import java.util.Scanner
// import java.util.StringTokenizer

import kotlin.math.*

const val space: String = " "
const val one: Int = 1
const val two: Int = 2

fun main() {
    val (H: Int, W: Int) = readln().split(space).map { it.toInt() }
    val (R: Int, C: Int) = readln().split(space).map { it.toInt() }
    if (one < R && R < H && one < C && C < W) {
        println(two + two)
    } else if ((R == one || R == H) && one < C && C < W) {
        println(two + min(one, H - one))
    } else if (one < R && R < H && (C == one || C == W)) {
        println(two + min(one, W - one))
    } else {
        println(min(one, H - one) + min(one, W - one))
    }
    kotlin.system.exitProcess(0)
}