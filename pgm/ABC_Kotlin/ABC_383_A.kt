// import java.time.*

import kotlin.math.*

const val zero: Int = 0
const val space: String = " "

fun main() {
    val N: Int = readln().toInt()
    val T: MutableList<Int> = MutableList(N) { zero }
    val V: MutableList<Int> = MutableList(N) { zero }
    for (i: Int in zero until N) {
        val (t: Int, v: Int) = readln().split(space).map { it.toInt() }
        T[i] = t
        V[i] = v
    }
    var time: Int = zero
    var water: Int = zero
    for (i: Int in zero until N) {
        water = max(0, water - T[i] + time)
        water += V[i]
        time = T[i]
    }
    println(water)
    kotlin.system.exitProcess(0)
}
