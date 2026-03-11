// import java.time.*

import kotlin.math.*

const val space: String = " "
const val one: Int = 1
const val two: Int = 2
const val three: Int = 3
const val zero: Int = 0

fun main() {
    val (A: Int, B: Int) = readln().split(space).map { it.toInt() }
    if (A == B) {
        println(one)
    } else if (abs(A - B) % two == zero) {
        println(three)
    } else {
        println(two)
    }
    kotlin.system.exitProcess(0)
}
