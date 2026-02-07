// import java.time.*

import kotlin.math.*

const val space: String = " "
const val two: Int = 2

fun main() {
    val (A: Int, B: Int) = readln().split(space).map { it.toInt() }
    println((A + B).toDouble().pow(two).toInt())
    kotlin.system.exitProcess(0)
}