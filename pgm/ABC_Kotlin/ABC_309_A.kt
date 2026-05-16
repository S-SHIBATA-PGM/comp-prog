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

const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "
const val one: Int = 1
const val three: Int = 3
const val zero: Int = 0
const val H:Int = three
const val W:Int = three

fun main() {
    val (A: Int, B: Int) = readln().split(space).map { it.toInt() }
    val N: Array<IntArray> = Array(H) { y ->
        IntArray(W) { x -> 
            y * W + x + one 
        }
    }
    // 右、左
    val dy:IntArray = intArrayOf(zero, zero)
    val dx:IntArray = intArrayOf(one, -one)
    var adjacent:String = No
    loop@for (y in N.indices) {
        for (x in N[y].indices) {
            if (N[y][x] == A) {
                for (k in dy.indices) {
                    val ny = y + dy[k]
                    val nx = x + dx[k]
                    if (ny in N.indices && nx in N[y].indices) {
                        if (N[ny][nx] == B) {
                            adjacent = Yes
                            break@loop
                        }
                    }
                }
                break@loop
            }
        }
    }
    println(adjacent)
    kotlin.system.exitProcess(0)
}