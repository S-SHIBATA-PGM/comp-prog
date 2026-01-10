// import java.time.*

// import kotlin.math.*

const val space: String = " "
const val zero: Int = 0

fun main() {
    val (N: Int, L: Int, R: Int) = readln().split(space).map { it.toInt() }
    var cnt: Int = zero
    for (i: Int in zero until N) {
        val (X: Int, Y: Int) = readln().split(space).map { it.toInt() }
        if (X <= L && R <= Y) {
            cnt++
        }
    }
    println(cnt)
    kotlin.system.exitProcess(0)
}