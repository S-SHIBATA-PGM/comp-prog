import kotlin.math.*

const val space: String = " "

fun main() {
    val (H: Int, B: Int) = readln().split(space).map { it.toInt() }
    println(max(H, B) - B)
    kotlin.system.exitProcess(0)
}
