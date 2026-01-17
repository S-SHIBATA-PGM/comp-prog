// import java.time.*

import kotlin.math.*

const val space: String = " "

fun main() {
    val (A: Double, B: Double) = readln().split(space).map { it.toDouble() }
    println((A / B).roundToInt())
    kotlin.system.exitProcess(0)
}
