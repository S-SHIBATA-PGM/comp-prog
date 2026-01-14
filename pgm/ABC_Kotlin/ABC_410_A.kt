// import java.time.*

// import kotlin.math.*

const val space: String = " "

fun main() {
    readln()
    val A: List<Int> = readln().split(space).map { it.toInt() }
    val K: Int = readln().toInt()
    println(A.count { it >= K })
    kotlin.system.exitProcess(0)
}
