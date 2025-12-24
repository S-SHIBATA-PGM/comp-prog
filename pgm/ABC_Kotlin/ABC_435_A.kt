const val one: Int = 1
const val two: Int = 2

fun main() {
    val N: Int = readln().toInt()
    println(N * (one + N) / two)
    kotlin.system.exitProcess(0)
}
