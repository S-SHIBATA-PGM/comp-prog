import kotlin.math.*

const val zero: Int = 0
const val one: Int = 1
const val three: Int = 3
const val oneMinus: Int = -1

fun main() {
    val N: Int = readln().toInt()
    var cubes: Int = zero
    for (i: Int in one..N) {
        cubes +=
                (oneMinus.toDouble().pow(i.toDouble()) * i.toDouble().pow(three.toDouble()))
                        .roundToInt()
    }
    println(cubes)
    kotlin.system.exitProcess(0)
}
