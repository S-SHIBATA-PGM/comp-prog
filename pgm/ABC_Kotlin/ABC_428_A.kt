import kotlin.math.*

const val space: String = " "

fun main() {
    val (S: Int, A: Int, B: Int, X: Int) = readln().split(space)
        .map { it.toInt() }
    println(S * A * (X / (A + B)) + S * min(A, X % (A + B)))
    kotlin.system.exitProcess(0)
}
