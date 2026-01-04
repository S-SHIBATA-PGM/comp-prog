import java.time.*

// import kotlin.math.*

const val space: String = " "

fun main() {
    val (X: Int, Y: Int) = readln().split(space).map { it.toInt() }
    println(Month.of(X).plus(Y.toLong()).value)
    kotlin.system.exitProcess(0)
}
