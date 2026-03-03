// import java.time.*

// import kotlin.math.*

const val one: Int = 1
const val zero: Int = 0
const val space: String = " "

fun main() {
    val (N: Int, C: Int) = readln().split(space).map { it.toInt() }
    val T: List<Int> = readln().split(space).map { it.toInt() }
    var pre:Int = -C
    var Candy:Int = zero
    for (time in T) {
        if (time - pre >= C) {
            Candy += one
            pre = time
        }
    }
    println(Candy)
    kotlin.system.exitProcess(0)
}