// import java.io.BufferedOutputStream
// import java.io.BufferedReader
// import java.io.DataInputStream
// import java.io.FileInputStream
// import java.io.IOException
// import java.io.InputStreamReader
// import java.io.PrintWriter
// import java.lang.StringBuilder
// import java.time.*
import java.util.Scanner

// import java.util.StringTokenizer

// import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val For: String = "For"
const val one: Int = 1
const val two: Int = 2
const val zero: Int = 0

fun main() {
    val scanner: Scanner = Scanner(System.`in`)
    val N: Int = scanner.nextInt()
    val most: Int = (N + one) / two
    var cntFor: Int = zero
    var cntAgainst: Int = zero
    run {
        repeat(N) {
            if (scanner.next() == For) {
                cntFor += one
            } else {
                cntAgainst += one
            }
            if (cntFor >= most) {
                println(Yes)
                return@run
            } else if (cntAgainst >= most) {
                println(No)
                return@run
            }
        }
    }
    kotlin.system.exitProcess(0)
}