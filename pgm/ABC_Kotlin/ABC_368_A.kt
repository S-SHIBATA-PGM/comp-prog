// import java.time.*

// import kotlin.math.*

const val space: String = " "
const val zero: Int = 0

fun main() {
    val (_: Int, K: Int) = readln().split(space).map { it.toInt() }
    val A: IntArray = readln().split(space).map { it.toInt() }.toIntArray()
    A.reverse()
    A.reverse(zero, K)
    A.reverse(K, A.size)
    println(A.joinToString(space))
    kotlin.system.exitProcess(0)
}
