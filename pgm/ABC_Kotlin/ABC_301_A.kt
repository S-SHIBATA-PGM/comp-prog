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

import kotlin.math.*

const val cT: Char = 'T'
const val cA: Char = 'A'
const val zero: Int = 0

fun main() {
    readln()
    val S: String = readln()
    val countT: Int = S.count { it == cT }
    val countA: Int = S.count { it == cA }
    val most: Int = max(countT, countA)
    var cntT: Int = zero
    var cntA: Int = zero
    for (c in S.toCharArray()) {
        if (c == cT) {
            cntT++
        } else {
            cntA++
        }
        if (cntT >= most) {
            println(cT)
            break
        } else if (cntA >= most) {
            println(cA)
            break
        }
    }
    kotlin.system.exitProcess(0)
}