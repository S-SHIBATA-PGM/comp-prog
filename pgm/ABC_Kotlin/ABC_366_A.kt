// import java.time.*

import kotlin.math.*

const val Yes: String = "Yes"
const val No: String = "No"
const val space: String = " "
const val two: Int = 2

fun main() {
    val (N: Int, T: Int, A: Int) = readln().split(space).map { it.toInt() }
    if (max(T, A) > N / two) {
        println(Yes)
    } else {
        println(No)
    }
    kotlin.system.exitProcess(0)
}