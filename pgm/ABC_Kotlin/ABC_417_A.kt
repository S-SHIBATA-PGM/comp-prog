// import java.time.*

// import kotlin.math.*

const val space: String = " "

fun main() {
    val (N: Int, A: Int, B: Int) = readln().split(space).map { it.toInt() }
    val S: String = readln()
    println(S.substring(A, N - B))
    kotlin.system.exitProcess(0)
}
