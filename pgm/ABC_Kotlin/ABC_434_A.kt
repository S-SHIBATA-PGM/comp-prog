const val one: Int = 1
const val thousand: Int = 1000
const val zero: Int = 0
const val space: String = " "

fun main() {
    val (W: Int, B: Int) = readln().split(space).map { it.toInt() }
    println(W * thousand / B + one)
    kotlin.system.exitProcess(0)
}